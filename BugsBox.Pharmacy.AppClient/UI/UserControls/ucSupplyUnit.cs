using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using BugsBox.Pharmacy.Business.Models;
using BugsBox.Pharmacy.AppClient.PS;
using CustomValidatorsLibrary;
using BugsBox.Pharmacy.AppClient.Common;
using BugsBox.Pharmacy.UI.Common;
using BugsBox.Pharmacy.Models;
using BugsBox.Pharmacy.AppClient.UI.Forms.Common;
using BugsBox.Pharmacy.AppClient.UI.Forms;

namespace BugsBox.Pharmacy.AppClient.UI.UserControls
{

    public partial class ucSupplyUnit : BaseFunctionUserControl
    {
        public List<BusinessType> _ListbussNessType = new List<BusinessType>();
        public List<UnitType> _ListUnitType = new List<UnitType>();
        private SupplyUnit _supplyUnit = null;
        public Dictionary<Guid, string> dicbussnessType = new Dictionary<Guid, string>();
        public Dictionary<Guid, string> dicUnitType = new Dictionary<Guid, string>();
        public Guid FlowTypeID { get; set; }
        public OperateType operationType;
        public List<OutDateDetail> _outDateList = new List<OutDateDetail>();

        private bool runMode = true;
        private string strQualityAgreement = null;
        private string[] strQ = null;
        private string strAttorneyAattorney = null;
        private string[] strA = null;
        private string strBankDetail = null;
        private string[] strB = null;
        System.IFormatProvider format = new System.Globalization.CultureInfo("zh-CN", true);
        ContextMenuStrip cms = new ContextMenuStrip();
        DataGridView CurrentDGV = null;
        private string msg = string.Empty;

        public SupplyUnit SupplyUnit
        {
            get { return _supplyUnit; }
            set { _supplyUnit = value; }
        }
        public ucSupplyUnit()
        {
            InitializeComponent();
            InitRequiredControl();

            dataGridView1.AutoGenerateColumns = false;
            dataGridView2.AutoGenerateColumns = false;
            newDataGridviewer1.AutoGenerateColumns = false;


            this.dataGridView1.RowPostPaint += delegate(object o, DataGridViewRowPostPaintEventArgs ex) { DataGridViewOperator.SetRowNumber((DataGridView)o, ex); };
            this.dataGridView2.RowPostPaint += delegate(object o, DataGridViewRowPostPaintEventArgs ex) { DataGridViewOperator.SetRowNumber((DataGridView)o, ex); };
            this.newDataGridviewer1.RowPostPaint += delegate(object o, DataGridViewRowPostPaintEventArgs ex) { DataGridViewOperator.SetRowNumber((DataGridView)o, ex); };

            cms.Items.Add("新增记录", null, AddNewRow);
            cms.Items.Add("删除记录", null, DelNewRow);
        }

        #region 委托书与质量保证书右键新增与删除行
        private void AddNewRow(object sender, EventArgs args)
        {
            DataTable c = this.CurrentDGV.DataSource as DataTable;
            if (c == null)
            {
                this.CurrentDGV.Rows.Add();
            }
            else
            {
                DataRow dr = c.NewRow();
                c.Rows.Add(dr);
                this.CurrentDGV.DataSource = c;
            }
            this.CurrentDGV.FirstDisplayedScrollingRowIndex = this.CurrentDGV.Rows.Count - 1;
            this.CurrentDGV.CurrentCell = this.CurrentDGV.Rows[this.CurrentDGV.Rows.Count - 1].Cells[0];
        }

        private void DelNewRow(object sender, EventArgs args)
        {
            DataTable c = this.CurrentDGV.DataSource as DataTable;
            if (c == null)
            {
                this.CurrentDGV.Rows.Remove(this.CurrentDGV.CurrentRow);
            }
            else
            {
                int index = this.CurrentDGV.CurrentRow.Index;
                c.Rows.RemoveAt(index);
                this.CurrentDGV.DataSource = c;
            }
        }
        #endregion

        public ucSupplyUnit(SupplyUnit supplyUnit, bool isEdit)
        {
            InitializeComponent();
            InitUnitypeCombox();
            _supplyUnit = supplyUnit;
            operationType = OperateType.Edit;
            InitEditControl(supplyUnit);
            SetControlIsEdit(isEdit);
            InitRequiredControl();
            runMode = isEdit;
        }

        public ucSupplyUnit(Guid flowID)
        {
            InitializeComponent();
            InitUnitypeCombox();
            string msg = string.Empty;
            _supplyUnit = PharmacyDatabaseService.GetSupplyUnitByFlowID(out msg, flowID);
            operationType = 0;
            this.runMode = false;
            InitEditControl(_supplyUnit);
            SetControlIsEdit(false);
            InitRequiredControl();
        }

        /// <summary>
        /// 初始化Required控件
        /// </summary>
        public void InitRequiredControl()
        {
            if (!DesignMode)
            {
                //AddRequiredValidate(label10, txtContactName);
                AddRequiredValidate(label30, cmbUnitType);
                AddRequiredValidate(label35, txtCode);
                AddRequiredValidate(label36, txtName);
                AddRequiredValidate(label12, txtLegalPerson);
                //AddRequiredValidate(label14, txtDocNumber);
                AddRequiredValidate(label25, txtDetailedAddress);
                AddRequiredValidate(label4, txtBoxQualityCharger);
            }
        }
        /// <summary>
        /// 设置控件的可用属性
        /// </summary>
        /// <param name="isEdit"></param>
        public void SetControlIsEdit(bool isEdit)
        {
            foreach (Control control in tableLayoutPanel1.Controls)
            {
                if (control is GroupBox)
                {
                    foreach (Control ct in control.Controls)
                    {
                        if (ct is TextBox)
                            ((TextBox)ct).ReadOnly = !isEdit;
                        else if (ct is RichTextBox)
                            ((RichTextBox)ct).ReadOnly = !isEdit;
                        else if (ct is ComboBox)
                        {
                            ((ComboBox)ct).Enabled = isEdit;
                        }
                        else if (ct is DateTimePicker)
                            ((DateTimePicker)ct).Enabled = isEdit;
                        else if (ct is CheckBox)
                            ((CheckBox)ct).Enabled = isEdit;

                        foreach (Control c in this.groupBox7.Controls)
                        {
                            if ((Guid)c.Tag != Guid.Empty)
                                c.BackColor = Color.LightBlue;
                            else
                                c.Enabled = false;
                        }

                    }
                }
                if (control is TabControl)
                {
                    foreach (Control tb in control.Controls)
                    {
                        foreach (Control c in tb.Controls)
                        {
                            if (c.GetType() == typeof(NewDataGridviewer))
                            {
                                ((DataGridView)c).ReadOnly = true;
                            }
                        }
                    }
                }
            }

        }

        #region InitSupplyUnit
        /// <summary>
        /// InitSupplyUnit
        /// </summary>
        /// <param name="supplyUnit"></param>
        /// <returns></returns>
        public SupplyUnit InitSupplyUnit(SupplyUnit supplyUnit)
        {
            string msg = String.Empty;
            _outDateList.Clear();
            if (!ValidateControls(out msg))
            {
                MessageBox.Show(msg);
                return null;
            }

            SupplyUnit sUnit = supplyUnit;
            if (cmbApprovelFlow.SelectedValue == null)
            {
                FlowTypeID = Guid.Empty;
                MessageBox.Show("审核流程未设置！");
                return null;
            }
            else
                FlowTypeID = (Guid)cmbApprovelFlow.SelectedValue;
            if (sUnit == null)
            {
                sUnit = new SupplyUnit();
                sUnit.Id = Guid.NewGuid();
                sUnit.CreateTime = DateTime.Now;
                sUnit.CreateUserId = AppClientContext.CurrentUser.Id;
                sUnit.FlowID = Guid.NewGuid();
                sUnit.WebAddress = "No";
            }

            if (this.cmbUnitType.SelectedValue != null)
                sUnit.UnitTypeId = Guid.Parse(this.cmbUnitType.SelectedValue.ToString());
            else
                sUnit.UnitTypeId = Guid.Empty;
            sUnit.Code = txtCode.Text.Trim();
            sUnit.ContactName = txtContactName.Text.Trim();
            sUnit.ContactTel = txtContactTel.Text.Trim();
            sUnit.Description = rtbDesc.Text.Trim();
            sUnit.Enabled = ckEnable.Checked;
            sUnit.IsApproval = false;
            sUnit.Fax = txtFax.Text.Trim();
            sUnit.LegalPerson = txtLegalPerson.Text.Trim();
            sUnit.Name = txtName.Text.Trim();
            sUnit.PinyinCode = txtPinyinCode.Text;
            sUnit.IsSealFile = checkBoxSealFile.Checked;
            sUnit.IsSingleTicketFile = checkBoxIsSingleTicketFile.Checked;
            sUnit.IsAnnualAudit = checkBoxIsAnnualAudit.Checked;
            sUnit.SupplyProductClass = txtSupplyProductClass.Text.Trim();
            sUnit.UpdateTime = DateTime.Now;
            sUnit.UpdateUserId = AppClientContext.CurrentUser.Id;
            sUnit.DocNumber = txtDocNumber.Text.Trim();
            sUnit.SupplyProductClass = txtSupplyProductClass.Text.Trim();
            sUnit.Description = rtbDesc.Text.Trim();
            sUnit.DetailedAddress = txtDetailedAddress.Text.Trim();
            sUnit.WebAddress = "Yes";
            sUnit.QualityCharger = txtBoxQualityCharger.Text.Trim();

            if (((Guid)this.buttonMedicineBusinessLicense.Tag) == Guid.Empty)
            {
                MessageBox.Show("请点击器械代码控制中心，添加代码！");
                return null;
            }

            sUnit.GSPLicenseId = (Guid)this.buttonMedicineBusinessLicense.Tag;
            sUnit.GSPLicenseOutDate = DateTime.Now.AddYears(50).Date;
            //法人委托书数据
            if (this.newDataGridviewer1.Rows.Count > 0)
            {
                List<DateTime> OutDateAttorneyAattorney = new List<DateTime>();
                string strOutDate = DateTime.Now.Date.ToString("yyyyMMdd");
                DateTime OutDate = DateTime.ParseExact(strOutDate, "yyyyMMdd", format);
                strAttorneyAattorney = null;
                strQualityAgreement = null;
                try
                {
                    foreach (DataGridViewRow item in this.newDataGridviewer1.Rows)
                    {
                        for (int i = 0; i < this.newDataGridviewer1.Columns.Count; i++)
                        {
                            if (item.Cells[i].Value != null)
                            {
                                strAttorneyAattorney += item.Cells[i].Value.ToString();
                                if (i != this.newDataGridviewer1.Columns.Count - 1)
                                    strAttorneyAattorney += ",";
                            }
                            else
                            {
                                MessageBox.Show("法人委托书有未填项，请检查!");
                                strAttorneyAattorney = null;
                                return null;
                            }
                        }
                        strAttorneyAattorney = strAttorneyAattorney + "||";

                        {
                            OutDate = DateTime.ParseExact(item.Cells["colEndTime"].Value.ToString(), "yyyyMMdd", format);
                            OutDateAttorneyAattorney.Add(OutDate);
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
                sUnit.AttorneyAattorneyOutdate = OutDateAttorneyAattorney.Max();
                sUnit.AttorneyAattorneyStartdate = DateTime.Now;
                sUnit.AttorneyAattorneyFile = Guid.Empty;
                if (strAttorneyAattorney == "")
                {
                    MessageBox.Show("请输入法人委托书信息！");
                    return null;

                }
                else
                {
                    sUnit.AttorneyAattorneyDetail = strAttorneyAattorney;
                }
            }
            else
                sUnit.AttorneyAattorneyOutdate = DateTime.ParseExact(DateTime.Now.Date.ToString(), "yyyyMMdd", format);

            //质量协议书数据
            if (this.dataGridView1.Rows.Count > 0)
            {
                List<DateTime> OutDateQualityAgreement = new List<DateTime>();
                string strOutDate = DateTime.Now.Date.ToString("yyyyMMdd");
                DateTime OutDate = DateTime.ParseExact(strOutDate, "yyyyMMdd", format);
                try
                {
                    foreach (DataGridViewRow item in this.dataGridView1.Rows)
                    {
                        for (int i = 0; i < this.dataGridView1.Columns.Count; i++)
                        {
                            if (item.Cells[i].Value != null)
                            {

                                strQualityAgreement += item.Cells[i].Value.ToString();
                                if (i != this.dataGridView1.Columns.Count - 1)
                                    strQualityAgreement += ",";
                            }
                            else
                            {
                                MessageBox.Show("质量协议书有未填项，请检查!");
                                strQualityAgreement = null;
                                return null;
                            }
                        }
                        strQualityAgreement = strQualityAgreement + "||";
                        {
                            OutDate = DateTime.ParseExact(item.Cells["colOutDate"].Value.ToString(), "yyyyMMdd", format);
                            OutDateQualityAgreement.Add(OutDate);
                        }
                    }
                }
                catch (Exception ex)
                {

                }
                sUnit.QualityAgreementOutdate = OutDateQualityAgreement.Max();
                sUnit.QualityAgreemenStartdate = DateTime.Now;
                sUnit.QualityAgreementFile = Guid.Empty;
                if (strQualityAgreement == "")
                {
                    MessageBox.Show("请输入质量协议书信息！");
                    return null;
                }
                else
                {
                    sUnit.QualityAgreementDetail = strQualityAgreement;
                }
            }
            else
                sUnit.QualityAgreementOutdate = DateTime.Now.Date;


            //银行账户数据
            if (this.dataGridView2.Rows.Count > 0)
            {
                try
                {
                    strBankDetail = string.Empty;
                    foreach (DataGridViewRow item in this.dataGridView2.Rows)
                    {
                        for (int i = 0; i < this.dataGridView2.Columns.Count; i++)
                        {
                            if (item.Cells[i].Value != null)
                            {
                                strBankDetail += item.Cells[i].Value.ToString();
                                if (i != this.dataGridView2.Columns.Count - 1)
                                    strBankDetail += ",";
                            }
                        }
                        strBankDetail = strBankDetail + "||";
                    }
                }
                catch (Exception ex)
                { }
            }
            sUnit.Bank = strBankDetail;
            _outDateList.Add(new OutDateDetail() { Content = "法人委托书过期", outDate = sUnit.AttorneyAattorneyOutdate });
            _outDateList.Add(new OutDateDetail() { Content = "质量协议书过期", outDate = sUnit.QualityAgreementOutdate });

            string message;




            //3营业执照
            if ((operationType == OperateType.Add && this.buttonBusinessLicense.Tag != null) || (operationType == OperateType.Edit && (Guid)this.buttonBusinessLicense.Tag != Guid.Empty))
            {
                try
                {
                    sUnit.BusinessLicenseId = (Guid)this.buttonBusinessLicense.Tag;
                    if (sUnit.BusinessLicenseId != Guid.Empty)
                        sUnit.BusinessLicenseeOutDate = PharmacyDatabaseService.GetBusinessLicense(out message, sUnit.BusinessLicenseId)
                            .OutDate;
                    _outDateList.Add(new OutDateDetail() { Content = "营业执照", outDate = sUnit.BusinessLicenseeOutDate });
                }
                catch (Exception ex)
                {
                    Log.Error(ex);
                }
            }
            if (operationType == OperateType.Edit && (Guid)this.buttonBusinessLicense.Tag == Guid.Empty)
            {
                sUnit.BusinessLicenseId = Guid.Empty;
            }

            if (operationType == OperateType.Edit && (Guid)this.buttonMedicineBusinessLicense.Tag == Guid.Empty)
            {
                sUnit.MedicineBusinessLicenseId = Guid.Empty;
            }


            //6器械制造
            if ((operationType == OperateType.Add && this.buttonInstrumentsProductionLicense.Tag != null) || (operationType == OperateType.Edit && (Guid)this.buttonInstrumentsProductionLicense.Tag != Guid.Empty))
            {
                try
                {
                    sUnit.InstrumentsProductionLicenseId = (Guid)this.buttonInstrumentsProductionLicense.Tag;

                    if (sUnit.InstrumentsProductionLicenseId != Guid.Empty)
                        sUnit.InstrumentsProductionLicenseOutDate = PharmacyDatabaseService.GetInstrumentsProductionLicense(out message, sUnit.InstrumentsProductionLicenseId)
                            .OutDate;
                    _outDateList.Add(new OutDateDetail() { Content = "医疗器械制造许可证过期", outDate = sUnit.InstrumentsProductionLicenseOutDate });

                }
                catch (Exception ex)
                {
                    Log.Error(ex);
                }
            }
            if (operationType == OperateType.Edit && (Guid)this.buttonInstrumentsProductionLicense.Tag == Guid.Empty)
            {
                sUnit.InstrumentsProductionLicenseId = Guid.Empty;
            }

            //7器械经营
            if ((operationType == OperateType.Add && this.buttonInstrumentsBusinessLicense.Tag == null) || (operationType == OperateType.Edit && (Guid)this.buttonInstrumentsBusinessLicense.Tag != Guid.Empty))
            {
                try
                {
                    sUnit.InstrumentsBusinessLicenseId = (Guid)this.buttonInstrumentsBusinessLicense.Tag;
                    if (sUnit.InstrumentsBusinessLicenseId != Guid.Empty)
                        sUnit.InstrumentsBusinessLicenseOutDate = PharmacyDatabaseService.GetInstrumentsBusinessLicense(out message, sUnit.InstrumentsBusinessLicenseId)
                            .OutDate;
                    _outDateList.Add(new OutDateDetail() { Content = "医疗器械经营许可证过期", outDate = sUnit.InstrumentsBusinessLicenseOutDate });

                }
                catch (Exception ex)
                {
                    Log.Error(ex);
                }
            }
            if (operationType == OperateType.Edit && (Guid)this.buttonInstrumentsBusinessLicense.Tag == Guid.Empty)
            {
                sUnit.InstrumentsBusinessLicenseId = Guid.Empty;
            }










            if (_outDateList.Count > 0)
            {
                OutDateDetail od = _outDateList.Where(r => r.outDate < DateTime.Now).FirstOrDefault();
                sUnit.OutDate = _outDateList.Min(r => r.outDate);
                if (od != null)
                {
                    var re = MessageBox.Show(od.Content + "，需要继续执行保存操作吗?", "提示", MessageBoxButtons.YesNo);
                    if (re == DialogResult.No)
                    {
                        return null;
                    }
                }
            }
            else
                sUnit.OutDate = DateTime.Now;
            return sUnit;

        }
        #endregion

        /// <summary>
        /// 根据SupplyUnit 对象初始化控件
        /// </summary>
        /// <param name="supplyUnit"></param>
        public void InitEditControl(SupplyUnit supplyUnit)
        {
            if (supplyUnit != null)
            {
                IntiApproveFlowType(supplyUnit);
                this._supplyUnit = supplyUnit;
                strB = null;
                strQ = null;
                strA = null;

                DataTable dtQ = new DataTable();
                dtQ.Columns.Add("c1");
                dtQ.Columns.Add("c2");
                dtQ.Columns.Add("c3");
                dtQ.Columns.Add("c4");
                dtQ.Columns.Add("c5");
                dataGridView1.DataSource = null;

                DataTable dtA = new DataTable();
                dtA.Columns.Add("c1");
                dtA.Columns.Add("c2");
                dtA.Columns.Add("c3");
                dtA.Columns.Add("c4");
                dtA.Columns.Add("c5");
                dtA.Columns.Add("c6");
                dtA.Columns.Add("c7");
                dtA.Columns.Add("c8");

                DataTable dtB = new DataTable();
                dtB.Columns.Add("c1");
                dtB.Columns.Add("c2");
                dtB.Columns.Add("c3");
                dtB.Columns.Add("c4");

                string[] strQSub = null;

                strQ = supplyUnit.QualityAgreementDetail.Split(new string[] { "||" }, StringSplitOptions.RemoveEmptyEntries);

                foreach (var subStr in strQ)
                {
                    strQSub = subStr.Split(new string[] { "," }, StringSplitOptions.None);
                    if (strQSub.Length > 5)
                    {
                        var s = strQSub.Skip(1).Take(strQSub.Length - 4);
                        strQSub[1] = string.Join(",", s);
                        strQSub[2] = strQSub[strQSub.Length - 3];
                        strQSub[3] = strQSub[strQSub.Length - 2];
                        strQSub[4] = strQSub[strQSub.Length - 1];
                    }


                    DataRow dr = dtQ.NewRow();

                    for (int i = 0; i < dtQ.Columns.Count; i++)
                        dr[i] = strQSub[i];
                    dtQ.Rows.Add(dr);
                }
                this.dataGridView1.Columns["colEnterpriseName"].DataPropertyName = "c1";
                this.dataGridView1.Columns["colContext"].DataPropertyName = "c2";
                this.dataGridView1.Columns["colAwardTime"].DataPropertyName = "c3";
                this.dataGridView1.Columns["colOutDate"].DataPropertyName = "c4";
                this.dataGridView1.Columns["colDocNo"].DataPropertyName = "c5";
                this.dataGridView1.DataSource = dtQ;

                string[] strASub = null;
                strA = supplyUnit.AttorneyAattorneyDetail.Split(new string[] { "||" }, StringSplitOptions.RemoveEmptyEntries);
                foreach (var subStr in strA)
                {
                    strASub = subStr.Split(new string[] { "," }, StringSplitOptions.None);

                    if (strASub.Length > 8)
                    {
                        var s = strASub.Skip(1).Take(strASub.Length - 7);
                        strASub[1] = string.Join(",", s);
                        strASub[2] = strASub[strASub.Length - 6];
                        strASub[3] = strASub[strASub.Length - 5];
                        strASub[4] = strASub[strASub.Length - 4];
                        strASub[5] = strASub[strASub.Length - 3];
                        strASub[6] = strASub[strASub.Length - 2];
                        strASub[7] = strASub[strASub.Length - 1];
                    }

                    DataRow dr = dtA.NewRow();
                    for (int i = 0; i < dtA.Columns.Count; i++)
                        dr[i] = strASub[i];
                    dtA.Rows.Add(dr);
                }
                this.newDataGridviewer1.Columns["dataGridViewTextBoxColumn2"].DataPropertyName = "c1";
                this.newDataGridviewer1.Columns["dataGridViewTextBoxColumn3"].DataPropertyName = "c2";
                this.newDataGridviewer1.Columns["colLegalPerson"].DataPropertyName = "c3";
                this.newDataGridviewer1.Columns["colAuthorizedPerson"].DataPropertyName = "c4";
                this.newDataGridviewer1.Columns["colAuthorizedPersonPaper"].DataPropertyName = "c5";
                this.newDataGridviewer1.Columns["colAuthStartTime"].DataPropertyName = "c6";
                this.newDataGridviewer1.Columns["colEndTime"].DataPropertyName = "c7";
                this.newDataGridviewer1.Columns["dataGridViewTextBoxColumn7"].DataPropertyName = "c8";
                this.newDataGridviewer1.DataSource = dtA;

                string[] strBSub = null;
                strB = supplyUnit.Bank.Split(new string[] { "||" }, StringSplitOptions.RemoveEmptyEntries);
                foreach (var subStr in strB)
                {
                    strBSub = subStr.Split(new string[] { "," }, StringSplitOptions.None);

                    if (strBSub.Length > 4)
                    {
                        var s = strBSub.Skip(1).Take(strBSub.Length - 3);
                        strBSub[1] = string.Join(",", s);
                        strBSub[2] = strBSub[strBSub.Length - 2];
                        strBSub[3] = strBSub[strBSub.Length - 1];
                    }

                    DataRow dr = dtB.NewRow();

                    for (int i = 0; i < dtB.Columns.Count; i++)
                        dr[i] = strBSub[i];
                    dtB.Rows.Add(dr);
                }
                this.dataGridView2.Columns["colAccountName"].DataPropertyName = "c1";
                this.dataGridView2.Columns["colBank"].DataPropertyName = "c2";
                this.dataGridView2.Columns["colAccount"].DataPropertyName = "c3";
                this.dataGridView2.Columns["dataGridViewTextBoxColumn6"].DataPropertyName = "c4";

                this.dataGridView2.DataSource = dtB;

                cmbUnitType.SelectedValue = supplyUnit.UnitTypeId;


                txtCode.Text = supplyUnit.Code;
                txtContactName.Text = supplyUnit.ContactName;
                txtContactTel.Text = supplyUnit.ContactTel;
                rtbDesc.Text = supplyUnit.Description;
                ckEnable.Checked = supplyUnit.Enabled;
                txtFax.Text = supplyUnit.Fax;
                txtLegalPerson.Text = supplyUnit.LegalPerson;
                txtName.Text = supplyUnit.Name;
                txtPinyinCode.Text = supplyUnit.PinyinCode;
                txtDocNumber.Text = supplyUnit.DocNumber;
                txtSupplyProductClass.Text = supplyUnit.SupplyProductClass;
                checkBoxIsAnnualAudit.Checked = supplyUnit.IsAnnualAudit;
                checkBoxIsSingleTicketFile.Checked = supplyUnit.IsSingleTicketFile;
                checkBoxSealFile.Checked = supplyUnit.IsSealFile;
                txtDetailedAddress.Text = supplyUnit.DetailedAddress;
                txtBoxQualityCharger.Text = supplyUnit.QualityCharger;

                var t = this.PharmacyDatabaseService.GetApproveFlowsByFlowID(out msg, supplyUnit.FlowID);
                if (t != null)
                {
                    FlowTypeID = t.ApprovalFlowTypeId;
                    cmbApprovelFlow.SelectedValue = FlowTypeID;
                    if (cmbApprovelFlow.SelectedIndex == -1) cmbApprovelFlow.SelectedIndex = 0;
                }
                cmbApprovelFlow.Enabled = supplyUnit.ApprovalStatus != ApprovalStatus.Waitting;


                this.buttonBusinessLicense.Tag = supplyUnit.BusinessLicenseId;

                this.buttonMedicineBusinessLicense.Tag = supplyUnit.GSPLicenseId;
                this.buttonInstrumentsProductionLicense.Tag = supplyUnit.InstrumentsProductionLicenseId;
                this.buttonInstrumentsBusinessLicense.Tag = supplyUnit.InstrumentsBusinessLicenseId;



                foreach (Control c in this.groupBox7.Controls)
                {
                    if (!((Guid)c.Tag).Equals(Guid.Empty))
                        c.BackColor = Color.LightBlue;
                    else
                    {
                        c.BackColor = Color.LightGray;
                    }
                }
            }
            else
            {
                IntiApproveFlowType(supplyUnit);
            }
        }

        /// <summary>
        /// 绑定combox
        /// </summary>
        private void InitUnitypeCombox()
        {
            try
            {
                string msg = string.Empty;

                #region bind UnitType
                GetUnitType();
                this.cmbUnitType.DataSource = _ListUnitType;
                this.cmbUnitType.DisplayMember = "Name";
                this.cmbUnitType.ValueMember = "Id";
                #endregion



            }
            catch (Exception ex)
            {
                Log.Error(ex);
            }


        }


        /// <summary>
        /// IntiApproveFlowType
        /// </summary>
        private void IntiApproveFlowType(SupplyUnit supplyUnit)
        {
            this.cmbApprovelFlow.DataSource = null;

            string msg = string.Empty;
            List<int> flowTypeList = new List<int>();
            if (supplyUnit == null)
            {
                flowTypeList.Add((int)ApprovalType.SupplyUnitApproval);
            }
            else
            {
                flowTypeList.Add((int)ApprovalType.SupplyUnitEditApproval);
            }

            List<ApprovalFlowType> list = PharmacyDatabaseService.GetApprovalFlowTypeByTypeList(out msg, flowTypeList.ToArray()).Where(r => r.Deleted == false).ToList();
            this.cmbApprovelFlow.DataSource = list;
            this.cmbApprovelFlow.DisplayMember = "Name";
            this.cmbApprovelFlow.ValueMember = "Id";

            if (cmbApprovelFlow.Items.Count > 0)
            {
                cmbApprovelFlow.SelectedIndex = 0;
            }

            this.ckEnable.Checked = true;
        }

        /// <summary>
        /// 获取经营方式
        /// </summary>
        private void GetBusinessType()
        {
            string msg = string.Empty;
            _ListbussNessType = PharmacyDatabaseService.AllBusinessTypes(out msg).ToList();
            foreach (BusinessType bt in _ListbussNessType)
            {
                dicbussnessType.Add(bt.Id, bt.Name);
            }

        }

        /// <summary>
        /// 获取企业类型
        /// </summary>
        private void GetUnitType()
        {
            string msg = string.Empty;
            _ListUnitType = PharmacyDatabaseService.AllUnitTypes(out msg).ToList();
            _ListUnitType = _ListUnitType.Where(d => d.Name == "经营企业" || d.Name == "生产企业").ToList();
            foreach (UnitType ut in _ListUnitType)
            {
                dicUnitType.Add(ut.Id, ut.Name);
            }

        }

        /// <summary>
        /// 清空所有控件值
        /// </summary>
        public void ClearControl()
        {

            foreach (Control control in tableLayoutPanel1.Controls)
            {
                if (control is GroupBox)
                {
                    foreach (Control ct in control.Controls)
                    {
                        if (ct is TextBox)
                            ((TextBox)ct).Text = string.Empty;
                        else if (ct is RichTextBox)
                            ((RichTextBox)ct).Text = string.Empty;
                        else if (ct is ComboBox)
                        {
                            if (ct.Name == "cmbBusinessType" || ct.Name == "cmbUnitType" || ct.Name == "cmbApprovelFlow")
                                ((ComboBox)ct).SelectedValue = Guid.Empty;
                            else
                                ((ComboBox)ct).SelectedValue = null;
                        }
                        else if (ct is DateTimePicker)
                            ((DateTimePicker)ct).Value = DateTime.Now;
                        else if (ct is CheckBox)
                            ((CheckBox)ct).Checked = false;

                    }
                }
            }
        }

        /// <summary>
        /// Add By Shen
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonFile_Click(object sender, EventArgs e)
        {
            Button btnFile = sender as Button;
            Guid fileId = Guid.Empty;
            if (btnFile.Tag != null)
            {
                fileId = (Guid)btnFile.Tag;
            }
            string msg;
            UserControlPharmacyFile form = new UserControlPharmacyFile(true);
            form.Title = btnFile.Parent.Text;
            form.OldPharmacyFile = PharmacyDatabaseService.GetPharmacyFile(out msg, fileId);
            if (form.ShowDialog() == DialogResult.OK)
            {
                btnFile.Tag = form.PharmacyFile.Id;
            }
        }

        private void ucSupplyUnit_Load(object sender, EventArgs e)
        {
            InitUnitypeCombox();
        }

        private void buttonLicense_Click(object sender, EventArgs e)
        {
            if (!ValidateControls(out msg))
            {
                MessageBox.Show("请先填写必要的企业信息，如企业类型，企业名称，法人等！");
                return;
            }

            Button btnLicense = sender as Button;
            string legalPerson = txtLegalPerson.Text.Trim();
            string qualityCharger = txtBoxQualityCharger.Text.Trim();
            string name = txtName.Text.Trim();
            string address = txtDetailedAddress.Text.Trim();

            Guid LicenseId = btnLicense.Tag == null ? Guid.Empty : (Guid)btnLicense.Tag;
            switch (btnLicense.Text)
            {
                case "分类控制中心":
                    FormGSPLicense frm = new FormGSPLicense(LicenseId, legalPerson, qualityCharger, name, address, address);
                    SetControls.SetControlReadonly(frm, !runMode);
                    if (frm.ShowDialog() == DialogResult.OK)
                    {
                        btnLicense.Tag = frm._gspLiscenceId;
                        btnLicense.BackColor = Color.LightGray;
                    }
                    break;

                case "三证信息":
                    FormBusinessLicense FormBusinessLicense = new FormBusinessLicense(LicenseId, name, address);
                    SetControls.SetControlReadonly(FormBusinessLicense, !runMode);
                    if (FormBusinessLicense.ShowDialog() == DialogResult.OK)
                    {
                        btnLicense.Tag = FormBusinessLicense.BusinessLicense.Id;
                        if (!btnLicense.Tag.Equals(Guid.Empty))
                            btnLicense.BackColor = Color.LightBlue;
                        else
                            btnLicense.BackColor = Color.LightGray;
                    }
                    break;
                case "器械生产许可证":
                    FormInstrumentsProductionLicense FormInstrumentsProductionLicense = new FormInstrumentsProductionLicense(LicenseId, legalPerson, address, name);
                    SetControls.SetControlReadonly(FormInstrumentsProductionLicense, !runMode);
                    if (FormInstrumentsProductionLicense.ShowDialog() == DialogResult.OK)
                    {
                        btnLicense.Tag = FormInstrumentsProductionLicense.InstrumentsProductionLicense.Id;
                        if (!btnLicense.Tag.Equals(Guid.Empty))
                            btnLicense.BackColor = Color.LightBlue;
                        else
                            btnLicense.BackColor = Color.LightGray;
                    }
                    break;
                case "经营许可证（备案凭证）":
                    FormInstrumentsBusinessLicense FormInstrumentsBusinessLicense = new FormInstrumentsBusinessLicense(LicenseId, legalPerson, qualityCharger, name, address, address);
                    SetControls.SetControlReadonly(FormInstrumentsBusinessLicense, !runMode);
                    if (FormInstrumentsBusinessLicense.ShowDialog() == DialogResult.OK)
                    {
                        btnLicense.Tag = FormInstrumentsBusinessLicense.InstrumentsBusinessLicense.Id;
                        if (!btnLicense.Tag.Equals(Guid.Empty))
                            btnLicense.BackColor = Color.LightBlue;
                        else
                            btnLicense.BackColor = Color.LightGray;
                    }
                    break;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Button btnFile = sender as Button;
            Guid fileId = Guid.Empty;
            if (btnFile.Tag != null)
            {
                fileId = (Guid)btnFile.Tag;
            }
            string msg;
            UserControlPharmacyFile form = new UserControlPharmacyFile(true);
            form.Title = btnFile.Parent.Text;
            form.OldPharmacyFile = PharmacyDatabaseService.GetPharmacyFile(out msg, fileId);
            if (form.ShowDialog() == DialogResult.OK)
            {
                btnFile.Tag = form.PharmacyFile.Id;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {

        }

        private void cmbUnitType_SelectionChangeCommitted(object sender, EventArgs e)
        {

        }

        private void txtName_Leave(object sender, EventArgs e)
        {
            string chineseSpell = CreateChineseSpell.CreatePY(this.txtName.Text);
            this.txtPinyinCode.Text = chineseSpell;

            if (operationType == OperateType.Add)
            {
                string msg = string.Empty;
                int count = this.PharmacyDatabaseService.GetSupplyUnitCount(out msg) + 1;
                this.txtDocNumber.Text = "DA" + count.ToString().PadLeft(6, '0');
            }
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            this.dataGridView1.AutoGenerateColumns = false;
            //this.dataGridView1.CurrentCell = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex];
            dataGridView1.BeginEdit(true);
        }

        private void dataGridView1_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            DataGridViewTextBoxColumn dgv_Text = new DataGridViewTextBoxColumn();
            for (int i = 0; i < dataGridView1.Rows.Count; i++)
            {
                int j = i + 1;
                dataGridView1.Rows[i].HeaderCell.Value = j.ToString();
            }
        }

        private void dataGridView2_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            this.dataGridView2.AutoGenerateColumns = false;
            //this.dataGridView2.CurrentCell = dataGridView2.Rows[e.RowIndex].Cells[e.ColumnIndex];
            dataGridView2.BeginEdit(true);
        }

        private void newDataGridviewer1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            this.newDataGridviewer1.AutoGenerateColumns = false;
            //if ()
            //this.newDataGridviewer1.CurrentCell = newDataGridviewer1.Rows[e.RowIndex].Cells[e.ColumnIndex];
            newDataGridviewer1.BeginEdit(true);
        }

        private void dataGridView1_RowsAdded(object sender, DataGridViewRowsAddedEventArgs e)
        {
            if (operationType == OperateType.Add)
            {
                dataGridView1.Rows[e.RowIndex].Cells[0].Value = txtName.Text.Trim();
                dataGridView1.Rows[e.RowIndex].Cells[4].Value = txtDocNumber.Text.Trim();
            }
        }

        private void newDataGridviewer1_RowsAdded(object sender, DataGridViewRowsAddedEventArgs e)
        {
            if (operationType == OperateType.Add)
            {
                newDataGridviewer1.Rows[e.RowIndex].Cells[0].Value = txtName.Text.Trim();
                newDataGridviewer1.Rows[e.RowIndex].Cells[2].Value = txtLegalPerson.Text.Trim();
                newDataGridviewer1.Rows[e.RowIndex].Cells[7].Value = txtDocNumber.Text.Trim();
            }
        }

        private void dataGridView2_RowsAdded(object sender, DataGridViewRowsAddedEventArgs e)
        {
            if (operationType == OperateType.Add)
                dataGridView2.Rows[e.RowIndex].Cells[0].Value = txtName.Text.Trim();
        }

        private void dataGridView1_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            if (this.dataGridView1.Columns[e.ColumnIndex].Name == this.colAwardTime.Name || this.dataGridView1.Columns[e.ColumnIndex].Name == this.colOutDate.Name)
            {
                try
                {
                    DateTime output;
                    bool b = DateTime.TryParseExact(this.dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString().Trim(), "yyyyMMdd", null, System.Globalization.DateTimeStyles.None, out output);
                    if (!b)
                    {
                        MessageBox.Show("请输入8位时间码！例如:20140101");
                        string dts = DateTime.Now.Year.ToString() + "0101";
                        string dte = DateTime.Now.Year.ToString() + "1231";
                        this.dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value = this.dataGridView1.Columns[e.ColumnIndex].Name == this.colAwardTime.Name ? dts : dte;
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("请输入8位时间码！例如:20140101");
                    string dts = DateTime.Now.Year.ToString() + "0101";
                    string dte = DateTime.Now.Year.ToString() + "1231";
                    this.dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value = this.dataGridView1.Columns[e.ColumnIndex].Name == this.colAwardTime.Name ? dts : dte;
                }
            }
        }

        public void EndDatagridEdit()
        {
            this.dataGridView1.EndEdit();
            this.newDataGridviewer1.EndEdit();
            this.dataGridView2.EndEdit();
        }



        public void checkcontrol()
        {
            if (cmbUnitType.Text == "")
            {
                MessageBox.Show("请选择企业类型栏！");
                cmbUnitType.Focus();
            }
            if (txtLegalPerson.Text == "")
            {
                MessageBox.Show("法人代表栏不允许为空！");
                txtLegalPerson.Focus();
            }
            if (txtBoxQualityCharger.Text == "")
            {
                MessageBox.Show("质量负责人栏不允许为空！");
                txtBoxQualityCharger.Focus();
            }
            if (txtCode.Text == "")
            {
                MessageBox.Show("企业编号不允许为空！");
                txtCode.Focus();
            }
            if (txtName.Text == "")
            {
                MessageBox.Show("企业名称栏不允许为空！");
                txtName.Focus();
            }
            if (txtDetailedAddress.Text == "")
            {
                MessageBox.Show("详细地址栏不允许为空！");
                txtDetailedAddress.Focus();
            }
        }

        private void newDataGridviewer1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            #region  //文字委托书
            //if (e.ColumnIndex<0 || e.RowIndex<0)return;
            //var s = this.newDataGridviewer1.Rows[e.RowIndex].Cells[this.dataGridViewTextBoxColumn3.Name].Value.ToString();
            //Forms.BaseDataManage.Form_DelegateDocument frm = new Forms.BaseDataManage.Form_DelegateDocument(s);
            //frm.ShowDialog();
            //if (frm.DialogResult == DialogResult.OK)
            //{
            //    this.newDataGridviewer1.Rows[e.RowIndex].Cells[this.dataGridViewTextBoxColumn3.Name].Value = frm._details;
            //}
            #endregion
            //图片法人委托书
            if (_supplyUnit == null) return;
            Forms.BaseDataManage.Form_Photo frm = new Forms.BaseDataManage.Form_Photo(3, this._supplyUnit.Id);
            frm.ShowDialog();
        }

        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex < 0 || e.RowIndex < 0) return;
            #region 文字委托书
            //var s = this.dataGridView1.Rows[e.RowIndex].Cells[this.colContext.Name].Value.ToString();
            //Forms.BaseDataManage.Form_DelegateDocument frm = new Forms.BaseDataManage.Form_DelegateDocument(s);
            //frm.ShowDialog();
            //frm.Text = "协议内容";
            //if (frm.DialogResult == DialogResult.OK)
            //{
            //    this.dataGridView1.Rows[e.RowIndex].Cells[this.colContext.Name].Value = frm._details;
            //}
            #endregion
            #region 图片质量委托书
            if (_supplyUnit == null) return;
            Forms.BaseDataManage.Form_Photo frm = new Forms.BaseDataManage.Form_Photo(4, this._supplyUnit.Id);
            frm.ShowDialog();
            #endregion
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (_supplyUnit == null) return;
            Forms.BaseDataManage.Form_Photo frm = new Forms.BaseDataManage.Form_Photo(0, this._supplyUnit.Id);
            frm.ShowDialog();
        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (_supplyUnit == null) return;
            Forms.BaseDataManage.Form_Photo frm = new Forms.BaseDataManage.Form_Photo(1, this._supplyUnit.Id);
            frm.ShowDialog();
        }

        private void linkLabel3_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (_supplyUnit == null) return;
            Forms.BaseDataManage.Form_Photo frm = new Forms.BaseDataManage.Form_Photo(2, this._supplyUnit.Id);
            frm.ShowDialog();
        }

        private void newDataGridviewer1_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            if (this.newDataGridviewer1.Columns[e.ColumnIndex].Name == this.colAuthStartTime.Name || this.newDataGridviewer1.Columns[e.ColumnIndex].Name == this.colEndTime.Name)
            {
                try
                {
                    DateTime output;
                    bool b = DateTime.TryParseExact(this.newDataGridviewer1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString(), "yyyyMMdd", null, System.Globalization.DateTimeStyles.None, out output);
                    if (!b)
                    {
                        MessageBox.Show("请输入8位时间码！例如:20140101");
                        string dts = DateTime.Now.Year.ToString() + "0101";
                        string dte = DateTime.Now.Year.ToString() + "1231";
                        this.newDataGridviewer1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value = this.newDataGridviewer1.Columns[e.ColumnIndex].Name == this.colAuthStartTime.Name ? dts : dte;
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("请输入8位时间码！例如:20140101");
                    string dts = DateTime.Now.Year.ToString() + "0101";
                    string dte = DateTime.Now.Year.ToString() + "1231";
                    this.newDataGridviewer1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value = this.newDataGridviewer1.Columns[e.ColumnIndex].Name == this.colAuthStartTime.Name ? dts : dte;
                }
            }
        }

        private void newDataGridviewer1_CellContentDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            //图片法人委托书
            if (_supplyUnit == null) return;
            Forms.BaseDataManage.Form_Photo frm = new Forms.BaseDataManage.Form_Photo(3, this._supplyUnit.Id);
            frm.ShowDialog();
        }

        private void newDataGridviewer1_CellMouseDown(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (e.Button != System.Windows.Forms.MouseButtons.Right) return;
            this.CurrentDGV = (DataGridView)sender;
            if (cms.Items.Count <= 0) return;
            cms.Items[1].Enabled = this.CurrentDGV.Rows.Count > 0;
            cms.Show(MousePosition.X, MousePosition.Y);
        }

        private void dataGridView1_CellMouseDown(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (e.Button != System.Windows.Forms.MouseButtons.Right) return;
            this.CurrentDGV = (DataGridView)sender;
            if (cms.Items.Count <= 0) return;
            cms.Items[1].Enabled = this.CurrentDGV.Rows.Count > 0;
            cms.Show(MousePosition.X, MousePosition.Y);
        }

        private void dataGridView2_CellMouseDown(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (e.Button != System.Windows.Forms.MouseButtons.Right) return;
            this.CurrentDGV = (DataGridView)sender;
            if (cms.Items.Count <= 0) return;
            cms.Items[1].Enabled = this.CurrentDGV.Rows.Count > 0;
            cms.Show(MousePosition.X, MousePosition.Y);
        }

        private void txtSupplyProductClass_Enter(object sender, EventArgs e)
        {
            this.txtSupplyProductClass.Height *= 3;
        }

        private void txtSupplyProductClass_Leave(object sender, EventArgs e)
        {
            this.txtSupplyProductClass.Height = 21;
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            //this.newDataGridviewer1.Rows.Add();
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            //this.dataGridView1.Rows.Add();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //this.dataGridView2.Rows.Add();
        }
    }
    public class OutDateDetail
    {
        public string Content { get; set; }
        public DateTime outDate { get; set; }
    }
}
