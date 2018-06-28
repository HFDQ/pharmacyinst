using FastReport;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Windows.Forms;
using TechSvr.Utils;
using TechSvr.Utils.DTO;

namespace TechSvr.Plugin.Print
{
    public class PrintCommand : ICommand
    {
        private const string img = "图片";
        private const string imgdata = "Bytes";
        private const string TEMPLATE_STR = "TEMPLATE";
        private const string SYSTYPE_STR = "Systype";
        private const string APPLYNO_STR = "APPLYNO";
        private static object printlock = new object();

        public string Name
        {
            get
            {
                return "Print";
            }
        }

        public ResposeMessage Excute(InputArgs request)
        {
            lock (printlock)
            {

                var data = request.Data.ToString();

                var jobject = Json.ToJObject(data);

                #region 打印参数验证
                if (jobject.TEMPLATE == null)
                {
                    throw new Exception("TEMPLATE 不能为空");
                }

                if (jobject.PRINTMODE == null)
                {
                    throw new Exception("PRINTMODE 不能为空");
                }
                int pmode = -1;
                if (!int.TryParse(jobject.PRINTMODE.ToString(), out pmode))
                {
                    throw new Exception("PRINTMODE 不是整数");
                }
                #endregion

                //主模板，公共模板
                var template = jobject.TEMPLATE.ToString();
                var printMode = (FPrintMode)pmode;

                //指定打印模板目录
                var sysType = request.SysType ?? "";

                using (Report report = new Report())
                {
                    string reportfileName = GetPriorityTemplate(template, sysType);

                    if (File.Exists(reportfileName))
                    {
                        report.Load(reportfileName);
                    }
                    else
                    {
                        //模板不存在时，自动设置为设计模式

                        printMode = FPrintMode.Design;
                        //模板文件不存在，则重新设置文件名
                        report.FileName = reportfileName;
                    }

                    var ds = BuildDS(jobject);

                    if (printMode != FPrintMode.BatchPrint)
                    {
                        report.RegisterData(ds);
                        //设置报表显示数据源选项
                        foreach (DataTable dt in ds.Tables)
                        {
                            report.GetDataSource(dt.TableName).Enabled = true;
                        }
                    }
                    switch (printMode)
                    {
                        case FPrintMode.Preview:
                        case FPrintMode.Design:
                        case FPrintMode.ExportPDF:
                            #region ExportPDF
                            try
                            {
                                if (printMode == FPrintMode.Preview)
                                {
                                    report.Show(true);
                                }
                                else if (printMode == FPrintMode.Design)
                                {
                                    report.Design(true);
                                }
                                else if (printMode == FPrintMode.ExportPDF)
                                {
                                    //导出PDF文件
                                    report.Prepare();
                                    using (SaveFileDialog sfd = new SaveFileDialog())
                                    {
                                        sfd.Filter = @"PDF文件|*.pdf";
                                        sfd.ShowDialog();
                                        var pdfFileName = sfd.FileName;

                                        report.Export(new FastReport.Export.Pdf.PDFExport(), pdfFileName);
                                        //System.Diagnostics.Process.Start("Explorer.exe", pdfFileName);
                                    }

                                }
                            }
                            catch (Exception)
                            {

                                throw;
                            }
                            #endregion
                            break;
                        case FPrintMode.Print:
                            //不弹打印窗口 直接打印
                            report.PrintSettings.ShowDialog = false;
                            report.Print();
                            break;
                        case FPrintMode.BatchPrint:
                            #region 批量打印
                            //查找打印模板
                            var ReportFileArr = ((DataTable)ds.Tables[0]).AsEnumerable()
                                .Select(p => new
                                {
                                    TEMPLATE = p.Field<string>(TEMPLATE_STR),
                                    SYSTYPE = p.Field<string>(SYSTYPE_STR),
                                }).Distinct().ToList();

                            //遍历打印模板
                            foreach (var ReportFile in ReportFileArr)
                            {
                                DataSet dsDataSource = new DataSet();

                                var dt1 = (DataTable)ds.Tables[0];
                                //获取打印模板对应的数据
                                var mainDataRows = dt1.AsEnumerable().Where(p => p.Field<string>(TEMPLATE_STR) == ReportFile.TEMPLATE && p.Field<string>(SYSTYPE_STR) == ReportFile.SYSTYPE);
                                var mainDataTable = dt1.Clone();
                                mainDataTable.TableName = dt1.TableName;

                                var dt2 = (DataTable)ds.Tables[1];
                                var detailDataTable = dt2.Clone();
                                detailDataTable.TableName = dt2.TableName;

                                foreach (var dataRow in mainDataRows)
                                {
                                    mainDataTable.Rows.Add(dataRow.ItemArray);
                                    //获取主表对应的子表数据行
                                    var detailDataRows = dt2.AsEnumerable().Where(p => p.Field<Int64>(APPLYNO_STR) == Int64.Parse(dataRow[APPLYNO_STR].ToString())).ToList();
                                    foreach (var detailDataRow in detailDataRows)
                                    {
                                        detailDataTable.Rows.Add(detailDataRow.ItemArray);
                                    }
                                }
                                dsDataSource.Tables.Add(mainDataTable);
                                dsDataSource.Tables.Add(detailDataTable);

                                report.RegisterData(dsDataSource);
                                string temptemplate = ReportFile.TEMPLATE;
                                if (string.IsNullOrEmpty(temptemplate))
                                {
                                    //如果模板为空，则使用公共模板
                                    temptemplate = template;
                                }
                                string templatefileName = GetFrxFullPath(temptemplate, ReportFile.SYSTYPE);
                                report.Load(templatefileName);
                                report.PrintSettings.ShowDialog = false;
                                report.Print();
                            }
                            #endregion
                            break;
                        default:
                            break;
                    }
                }
                return new ResposeMessage
                {
                    type = ResultType.SUCCESS.ToString(),
                    messageCode = MessageCode.information.ToString(),
                    message = "打印成功",
                    data = ""
                };
            }
        }
        public static string GetFrxFullPath(string frxName, string SysType)
        {
            var dir = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, @"FastPrint");
            if (!string.IsNullOrEmpty(SysType))
            {
                dir = Path.Combine(dir, SysType);
                dir = Path.Combine(dir, "Template");
            }

            if (!Directory.Exists(dir))
            {
                Directory.CreateDirectory(dir);
            }

            return Path.Combine(dir, frxName);
        }
        /// <summary>
        /// 获取优先级较高的模板
        /// </summary>
        /// <param name="template">模板字段</param>
        /// <param name="sysType">系统类型</param>
        /// <returns></returns>
        private string GetPriorityTemplate(string template, string sysType)
        {
            var preTemplates = template.Split('|');

            if (preTemplates.Length >= 2)
            {
                //template中包含多个模板,如template:"条码补打模板.frx|条码打印模板.frx
                //先判断“条码补打模板.frx”是否存在，存在就用这个模板打，
                //如果“条码补打模板.frx”不存在，则用条码打印模板.frx打
                template = preTemplates[0];
                var reportfileName = GetFrxFullPath(template, sysType);
                if (File.Exists(reportfileName))
                {   //如果第一个模板存在，则使用第一个模板文件，直接返回第一个模板文件路径
                    return reportfileName;
                }
                else if (File.Exists(GetFrxFullPath(preTemplates[1], sysType)))
                {
                    //如果存在第二个模板，则返回第二个
                    return GetFrxFullPath(preTemplates[1], sysType);

                }
                else
                {  //如果两个都不存在，则返回第一个
                    return GetFrxFullPath(preTemplates[0], sysType);
                }
            }
            return GetFrxFullPath(template, sysType); ;
        }
        /// <summary>
        /// 构建数据源
        /// </summary>
        /// <param name="jobject"></param>
        /// <returns></returns>
        private DataSet BuildDS(dynamic jobject)
        {
            var FDataSet = new DataSet();
            FDataSet = JsonConvert.DeserializeObject<DataSet>(jobject.DATA.ToString());
            foreach (DataTable dt in FDataSet.Tables)
            {
                if (dt.Columns.Cast<DataColumn>().Any(o => o.ColumnName.Contains(img)))
                {
                    List<string> newAddedColumns = new List<string>();
                    foreach (DataColumn column in dt.Columns)
                    {
                        if (column.ColumnName.Contains(img))
                        {
                            newAddedColumns.Add(column.ColumnName);
                        }
                    }
                    var canAddColumn = true;
                    foreach (DataRow row in dt.Rows)
                    {
                        foreach (var newAddedColumn in newAddedColumns)
                        {
                            if (canAddColumn)
                                dt.Columns.Add(newAddedColumn + imgdata, typeof(Byte[]));

                            row[newAddedColumn + imgdata] = Convert.FromBase64String(row[newAddedColumn].ToString());
                        }
                        canAddColumn = false;
                    }
                }
            }
            return FDataSet;
        }
    }
}
