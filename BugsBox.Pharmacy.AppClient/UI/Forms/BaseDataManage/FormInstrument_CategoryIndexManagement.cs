using InstCategoryIdx;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace BugsBox.Pharmacy.AppClient.UI.Forms.BaseDataManage
{
    public partial class FormInstrument_CategoryIndexManagement : Form
    {
        FormStatus fs = new FormStatus(FormStatusEnum.New);
        List<TextBox> ListValidator = new List<TextBox>();
        ToolTip tt = new ToolTip();

        ContextMenuStrip cms = new ContextMenuStrip();
        NewInstCategory _instCategory = null;//分类目录全体数据

        NewCategory CurrentImptClass = new NewCategory
        {
            Category = 1
        };

        List<Tuple<int, string>> codeList1 = new List<Tuple<int, string>>();//头部三个管理类别
        TreeNode NodeHeader1 = new TreeNode();//树头部

        public FormInstrument_CategoryIndexManagement()
        {
            InitializeComponent();
            NodeHeader1.Text = "医疗器械分类树";
            NodeHeader1.Name = "topNode";
            NodeHeader1.ToolTipText = "请选择分类目录";
            NodeHeader1.Checked = true;
            this.treeView1.Nodes.Add(NodeHeader1);
            #region 第二层，3个管理类别            
            codeList1.Add(new Tuple<int, string>(1, "I级管理"));
            codeList1.Add(new Tuple<int, string>(2, "II级管理"));
            codeList1.Add(new Tuple<int, string>(3, "III级管理"));
            codeList1.Add(new Tuple<int, string>(4, "其他"));
            #endregion
            this.comboBox1.SelectedIndex = 0;

            #region 器械分类文件读入
            if (!File.Exists("InstCategories.bin"))
            {
                MessageBox.Show("医疗器械分类文件丢失，请联系管理员！"); return;
            }
            this._instCategory = SearialiserHelper<InstCategoryIdx.NewInstCategory>.DeSerializeFileToObj("InstCategories.bin");
            #endregion


            #region 组织分类树:loadCateData
            Action<List<NewCategory>> loadCateData = CreateTree;
            #endregion

            #region 控件Load事件，装载TreeView
            this.Load += (s, e) =>
            {
                loadCateData(_instCategory.ListCategory);
            };
            #endregion

            #region 单击节点事件
            this.treeView1.NodeMouseClick += (s, e) =>
                {
                    this.toolStripButton2.Enabled = e.Node.Tag != null;
                    if (e.Node.Tag == null) return;
                    var d = e.Node.Tag as NewCategory;
                    if (d == null)
                    {
                        return;
                    }

                    this.CurrentImptClass = (NewCategory)e.Node.Tag;
                    this.comboBox1.SelectedIndex = this.CurrentImptClass.Category - 1;
                    this.fs.FStatus = FormStatusEnum.Edit;
                    this.CurrentImptClass = (NewCategory)e.Node.Tag;
                    this.imptClassBindingSource.Clear();
                    this.imptClassBindingSource.Add(this.CurrentImptClass);
                };
            #endregion

            #region 保存和关闭按钮
            this.button1.Click += (s, e) =>
                {
                    var re = MessageBox.Show("确定需要保存吗？", "提示", MessageBoxButtons.OKCancel);
                    if (re == System.Windows.Forms.DialogResult.Cancel) return;

                    if (!this.ValidateRequiredTextBox()) return;

                    this.CurrentImptClass.Category = this.comboBox1.SelectedIndex + 1;
                    if (this.fs.FStatus == FormStatusEnum.New)
                    {
                        this._instCategory.ListCategory.Add(this.CurrentImptClass);
                    }

                    SearialiserHelper<NewInstCategory>.SerializeObjToFile(this._instCategory, "InstCategories.bin");
                    MessageBox.Show("保存成功！");
                    this.CurrentImptClass = new NewCategory
                    {
                        Category = 1,
                    };
                    this.imptClassBindingSource.Clear();
                    this.imptClassBindingSource.Add(this.CurrentImptClass);
                    this.comboBox1.SelectedIndex = 0;
                    loadCateData(_instCategory.ListCategory);
                };

            this.button2.Click += (s, e) =>
            {
                this.Close();
            };
            #endregion

            #region 删除按钮
            this.toolStripButton2.Click += (s, e) =>
                {
                    if (this.treeView1.SelectedNode == null) return;
                    if (((NewCategory)this.treeView1.SelectedNode.Tag) == null) return;
                    var re = MessageBox.Show("删除分类节点吗？", "提示", MessageBoxButtons.OKCancel);
                    if (re == System.Windows.Forms.DialogResult.Cancel) return;
                    var selectedImpt = (NewCategory)this.treeView1.SelectedNode.Tag;
                    this._instCategory.ListCategory.Remove(selectedImpt);

                    SearialiserHelper<NewInstCategory>.SerializeObjToFile(this._instCategory, "Category.data");
                    MessageBox.Show("删除成功！");
                    loadCateData(_instCategory.ListCategory);
                    this.CurrentImptClass = new NewCategory
                    {
                        Category = 1
                    };
                    this.comboBox1.SelectedIndex = 0;
                    this.imptClassBindingSource.Clear();
                    this.imptClassBindingSource.Add(this.CurrentImptClass);
                };
            #endregion

            this.imptClassBindingSource.Add(this.CurrentImptClass);
        }

        private void CreateTree(List<NewCategory> datalist)
        {
            this.treeView1.Nodes[0].Nodes.Clear();
            foreach (var row in codeList1)//三个管理分类
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

                    // tnSecond.Tag = "产品目录序号：" + j.Code;
                    tnSecond.Tag = j;
                    var ChildList = datalist.Where(r => r.Code == j.Code && r.Category == j.Category).ToList();
                    foreach (var ch in ChildList.Distinct(r => r.CIdx))
                    {
                        TreeNode tnch = new TreeNode();
                        tnch.Text = ch.CIdx + ch.Level1Name;
                        tnch.Name = ch.CIdx;
                        // tnch.Tag = "一级产品类别序号：" + ch.CIdx + "\r\n 旧版对照表：\r\n  " + ch.Comparison;
                        tnch.Tag = ch;

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
                NodeHeader1.Nodes.Add(tn);
            }
            this.treeView1.Nodes[0].Expand();
            this.treeView1.ShowNodeToolTips = true;
        }


        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            this.fs.FStatus = FormStatusEnum.New;
            this.CurrentImptClass = new NewCategory
            {
                Category = 1
            };
            this.comboBox1.SelectedIndex = 0;
            this.imptClassBindingSource.Clear();
            this.imptClassBindingSource.Add(this.CurrentImptClass);
        }

        #region 验证文本框
        private void AddTextBoxToValidator(Control control)
        {
            foreach (Control c in control.Controls)
            {
                if (c.GetType() == typeof(TextBox))
                {
                    this.ListValidator.Add((TextBox)c);
                }
                if (c.GetType() == typeof(GroupBox))
                {
                    AddTextBoxToValidator(c);
                }
            }
        }

        private bool ValidateRequiredTextBox()
        {
            foreach (TextBox t in this.ListValidator.OrderBy(r => r.TabIndex).ToList())
            {
                if (string.IsNullOrEmpty(t.Text.Trim()))
                {
                    tt.Dispose();
                    tt = new ToolTip
                    {
                        ToolTipTitle = "提示!",
                        AutoPopDelay = 5000,
                        InitialDelay = 1000,
                        ReshowDelay = 500,
                        ShowAlways = true,
                        ToolTipIcon = ToolTipIcon.Warning,
                        IsBalloon = true
                    };
                    tt.SetToolTip(t, "NoText!");
                    this.tt.Show("请填写信息", t, 5000);
                    t.Focus();
                    return false;
                }
            }
            return true;
        }
        #endregion

        private void button1_Click(object sender, EventArgs e)
        {

        }
    }
}
