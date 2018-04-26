using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using BugsBox.Pharmacy.AppClient.Common;
using BugsBox.Pharmacy.AppClient.PS;
using BugsBox.Pharmacy.Models;
using BugsBox.Pharmacy.AppClient.UI.Forms.BaseDataManage;
using InstCategoryIdx;
using System.Threading;

namespace BugsBox.Pharmacy.AppClient.UI.Forms.Common
{
    public partial class FormGSPLicense : BaseFunctionForm
    {

        BugsBox.Pharmacy.Models.GSPLicense _gspLiscence = null;
        public Guid _gspLiscenceId { get; private set; }
        string msg = string.Empty;
        FormStatus _fs = new FormStatus(FormStatusEnum.New);

        NewInstCategory _instCategory = null;

        ContextMenuStrip cms = new ContextMenuStrip();

        List<Tuple<int, string>> codeList = new List<Tuple<int, string>>();//头部三个管理类别
        TreeNode NodeHeader = new TreeNode();//树头部
        public FormGSPLicense(Guid guid, string legalPerson, string qualityCharger, string name, string address, string wareHouseAddress)
        {
            InitializeComponent();
            this._gspLiscenceId = guid;

            #region 读入分类目录数据文件
            this._instCategory = SearialiserHelper<InstCategoryIdx.NewInstCategory>.DeSerializeFileToObj("InstCategories.bin");
            
            NodeHeader.Text = "医疗器械分类树";
            NodeHeader.Name = "topNode";
            NodeHeader.ToolTipText = "请选择分类目录";
            NodeHeader.Checked = true;
            this.treeView1.Nodes.Add(NodeHeader);

            #region 第二层，3个管理类别            
            codeList.Add(new Tuple<int, string>(1, "I级管理"));
            codeList.Add(new Tuple<int, string>(2, "II级管理"));
            codeList.Add(new Tuple<int, string>(3, "III级管理"));           
            #endregion

            #endregion

            #region 经营方式
            var bussinesstypes = this.PharmacyDatabaseService.AllBusinessTypes(out msg).OrderBy(r => r.Name).ToList();
            this.comboBoxBusinessTypeId.DisplayMember = "Name";
            this.comboBoxBusinessTypeId.ValueMember = "Id";
            this.comboBoxBusinessTypeId.DataSource = bussinesstypes;
            #endregion

            #region 初始化gsp对象和分类码列表
            if (this._gspLiscenceId != Guid.Empty)
            {
                this._gspLiscence = PharmacyDatabaseService.GetGSPLicense(out msg, this._gspLiscenceId);
                this._fs.FStatus = FormStatusEnum.Edit;

                foreach (var i in this._instCategory.ListCategory)
                {
                    i.IsChecked = false;
                }

                foreach (var row in this._gspLiscence.GMSPLicenseBusinessScopes.OrderBy(r => r.BusinessScopeCode).Where(r => r.Deleted == false))
                {
                    this._instCategory.ListCategory.FirstOrDefault(r => r.StandardCode == row.BusinessScopeCode).IsChecked = true;
                }
            }
            else
            {
                this._gspLiscence = new GSPLicense
                {
                    Name = "分类控制中心",
                    RegAddress = address,
                    WarehouseAddress = wareHouseAddress,
                    LegalPerson = legalPerson,
                    QualityHeader = qualityCharger,
                    BusinessTypeId = bussinesstypes.FirstOrDefault().Id,
                    Header = legalPerson,
                    Code = "无",
                    ChangeRecord = DateTime.Now.Date.ToLongDateString(),
                    DocNumber = "无",
                    IssuanceDate = DateTime.Now.Date,
                    IssuanceOrg = "无",
                    LicenseCode = "无",
                    LicenseType = LicenseType.GSP,
                    OutDate = DateTime.Now.Date.AddYears(50),
                    StartDate = DateTime.Now.Date,
                    StoreId = BugsBox.Pharmacy.Config.PharmacyServiceConfig.Config.CurrentStore.Id,
                    Valid = true,
                    UnitName = name,
                    Id = Guid.NewGuid(),
                    GMSPLicenseBusinessScopes = new List<GMSPLicenseBusinessScope>()
                };
            }
            this.gSPLicenseBindingSource.Clear();
            this.gSPLicenseBindingSource.Add(this._gspLiscence);
            #endregion

            #region 分类树双击加入代码列表
            this.treeView1.NodeMouseClick += (s, e) =>
            {
                
            };
            #endregion

           
        }

        #region 事件处理
        private void buttonSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (this._instCategory.ListCategory.Count(r => r.IsChecked) <= 0)
                {
                    MessageBox.Show("您没有选择任何器械分类代码，请设置！");
                    return;
                }
                this._gspLiscence.GMSPLicenseBusinessScopes = null;
                IList<GMSPLicenseBusinessScope> newlist = new List<GMSPLicenseBusinessScope>();
                foreach (var row in this._instCategory.ListCategory)
                {
                    if (!row.IsChecked) continue;
                    GMSPLicenseBusinessScope gmsp = new GMSPLicenseBusinessScope
                    {
                        BusinessScopeCode = row.StandardCode,
                        BusinessScopeCodeMemo = row.Description,
                        GSPLicenseId = this._gspLiscence.Id,
                        Id = Guid.NewGuid(),
                    };
                    newlist.Add(gmsp);
                }
                this._gspLiscence.GMSPLicenseBusinessScopes = newlist;
                bool result = false;
                if (this._fs.FStatus == FormStatusEnum.New)
                {
                    result = PharmacyDatabaseService.AddGSPLicense(out msg, this._gspLiscence);
                }
                else
                {
                    result = PharmacyDatabaseService.EditGSPLiscence(this._gspLiscence, out msg);
                }
                if (result && string.IsNullOrWhiteSpace(msg))
                {
                    MessageBox.Show(this.Text + "证书保证成功", "成功", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    this.DialogResult = System.Windows.Forms.DialogResult.OK;
                    this._gspLiscenceId = this._gspLiscence.Id;
                }
                else
                {
                    MessageBox.Show(this.Text + "证书保存失败" + msg, "错误", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }


            }
            catch (Exception ex)
            {
                MessageBox.Show(this.Text + "证书保存失败" + ex.Message, "错误", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            }

        }
        private void buttonClose_Click(object sender, EventArgs e)
        {
            this.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.Close();
        }
        #endregion 事件处理

        private void RecursiveTreeNodeCheck(TreeNode node)
        {

            foreach (TreeNode childNode in node.Nodes)
            {
                childNode.Checked = node.Checked;
                if (childNode.Tag is NewCategory)
                {
                    var a = (NewCategory)childNode.Tag;
                    a.IsChecked = node.Checked;
                }
                RecursiveTreeNodeCheck(childNode);
            }


        }

        private void recurseParentCheck(TreeNode node)
        {
            if (node.Parent == null) return;
            foreach (TreeNode sibling in node.Parent.Nodes)
            {
                node.Parent.Checked = false;
                if (sibling.Checked)
                {
                    sibling.Parent.Checked = true;
                    break;
                }

            }
            this.recurseParentCheck(node.Parent);
        }



        #region 图片
        private void pictureBox1_Click(object sender, EventArgs e)
        {
            if (this._gspLiscenceId == Guid.Empty || this._gspLiscenceId == null) return;
            UI.Forms.BaseDataManage.Form_Photo frm = new BaseDataManage.Form_Photo(1101, this._gspLiscenceId);
            if (!this.buttonSave.Visible)
            {
                SetControls.SetControlReadonly(frm, true);
            }
            frm.ShowDialog();
        }
        #endregion



        private void button4_Click(object sender, EventArgs e)
        {
            //UserInstClassificationCode frm = new UserInstClassificationCode(this._gspLiscence.Id);
            //frm.Show(this);
            //frm.UserDefinedInstCode += (s, ev) =>
            //{
            //    if (this._businessScopeList.Any(r => r.BusinessScopeCode == ev.scope.BusinessScopeCode))
            //    {
            //        MessageBox.Show("该代码已经添加过了！"); return;
            //    };
            //    this._businessScopeList.Add(ev.scope);
            //};
        }

        private void treeView1_NodeMouseClick(object sender, TreeNodeMouseClickEventArgs e)
        {
            if (e.Node.Tag is NewCategory)
            {
                var i = (NewCategory)e.Node.Tag;
                if (i == null) return;
                this.richTextBox1.Text = "完整代码：" + i.StandardCode + "\r\n";
                this.richTextBox1.Text += "管理分类：" + i.CategoryType+"\r\n";
                this.richTextBox1.Text += "产品描述：\r\n    " + i.Description.Trim() + "\r\n";
                this.richTextBox1.Text += "预期用途：\r\n    " + i.Usage.Trim() + "\r\n";
                this.richTextBox1.Text += "品名举例：\r\n    " + i.Example.Trim()+"\r\n";
                this.richTextBox1.Text += "旧版对照表：\r\n    " + i.Comparison;
            }
            else if(e.Node.Tag!=null)
            {
                this.richTextBox1.Text = e.Node.Tag.ToString();
            }
        }

        private void treeView1_AfterCheck(object sender, TreeViewEventArgs e)
        {
            if (e.Action == TreeViewAction.ByMouse)
            {
                this.RecursiveTreeNodeCheck(e.Node);
                this.recurseParentCheck(e.Node);
            }
        }

        private void FormGSPLicense_Load(object sender, EventArgs e)
        {
            this.CreateTree(this._instCategory.ListCategory);
        }

        private void CreateTree( List<NewCategory> datalist)
        {
            this.treeView1.Nodes[0].Nodes.Clear();
            foreach (var row in codeList)//三个管理分类
            {
                TreeNode tn = new TreeNode();
                tn.Name = row.Item1 + "(" + row.Item2 + ")";
                tn.Text = row.Item2;

                tn.Tag = "管理分类：" + row.Item1;
                var nextCodeList = datalist.Where(r => r.Category == row.Item1).Distinct(r => r.Code).ToList();

                foreach (var j in nextCodeList)//满足分类管理码的记录
                {
                    TreeNode tnSecond = new TreeNode();
                    tnSecond.Text = j.Idx + "(" + j.CodeName + ")";
                    tnSecond.Name = j.Idx.ToString();
                    tnSecond.ToolTipText = "产品目录";

                    tnSecond.Tag = "产品目录序号：" + j.Code;
                    var ChildList = datalist.Where(r => r.Code == j.Code && r.Category == j.Category).ToList();
                    foreach (var ch in ChildList.Distinct(r => r.CIdx))
                    {
                        TreeNode tnch = new TreeNode();
                        tnch.Text = ch.CIdx + ch.Level1Name;
                        tnch.Name = ch.CIdx;
                        tnch.Tag = "一级产品类别序号：" + ch.CIdx + "\r\n 旧版对照表：\r\n  " + ch.Comparison;
                        tnch.ToolTipText = "一级产品类别";
                        var lastList = ChildList.Where(r => r.CIdx == ch.CIdx).ToList();
                        foreach (var last in lastList)
                        {
                            TreeNode tnla = new TreeNode();
                            tnla.Text = last.SubIdx + last.Level2Name;
                            tnla.Name = last.SubIdx;
                            tnla.ToolTipText = "二级产品类别";
                            tnla.Tag = last;
                            tnla.Checked = last.IsChecked;
                            tnch.Nodes.Add(tnla);
                            if (last.IsChecked)
                            {
                                tnla.Parent.Checked = true;
                            }
                        }
                        tnSecond.Nodes.Add(tnch);
                        if (tnch.Checked)
                        {
                            tnch.Parent.Checked = true;
                        }
                    }
                    tnSecond.Expand();
                    tn.Nodes.Add(tnSecond);
                    if (tnSecond.Checked)
                    {
                        tnSecond.Parent.Checked = true;
                    }
                }
                tn.Expand();
                NodeHeader.Nodes.Add(tn);
            }
            this.treeView1.Nodes[0].Expand();
            this.treeView1.ShowNodeToolTips = true;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            if (this.textBox1.Text.Trim().Length <= 2) return;
            string keyword=this.textBox1.Text.Trim();
            var list= this._instCategory.ListCategory.Where(r => r.Comparison.Contains(keyword)).ToList();
            this.CreateTree(list);
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            string keyword = this.textBox2.Text.Trim();
            //if (keyword.Length <= 1) return;
            var list = this._instCategory.ListCategory.Where(r => r.StandardCode.StartsWith(keyword)).ToList();
            this.CreateTree(list);
        }



    }
}
