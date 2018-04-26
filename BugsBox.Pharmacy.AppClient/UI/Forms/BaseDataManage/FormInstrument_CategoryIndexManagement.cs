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
        InstCategory _instCategory = null;//分类目录全体数据

        ImptClass CurrentImptClass = new ImptClass
        {
            Category=1
        };
        public FormInstrument_CategoryIndexManagement()
        {
            InitializeComponent();

            this.comboBox1.SelectedIndex = 0;

            #region 器械分类文件读入
            if (!File.Exists("Category.data"))
            {
                MessageBox.Show("医疗器械分类文件丢失，请联系管理员！"); return;
            }
            this._instCategory = SearialiserHelper<InstCategoryIdx.InstCategory>.DeSerializeFileToObj("Category.data");
            #endregion

            #region 读入分类目录
            TreeNode NodeHeader = new TreeNode();
            NodeHeader.Text = "医疗器械分类树";
            NodeHeader.Name = "topNode";
            NodeHeader.ToolTipText = "请选择分类目录";
            this.treeView1.Nodes.Add(NodeHeader);
            var codeList = this._instCategory.ImptClasses.Distinct(r => r.Code).ToList();
            #endregion

            #region 组织分类树:loadCateData
            Action<List<ImptClass>> loadCateData = (data) =>
            {
                NodeHeader.Nodes.Clear();
                foreach (var row in data)
                {
                    TreeNode tn = new TreeNode();
                    tn.Name = row.Code;
                    tn.Text = row.Code + "(" + row.Name + ")";
                    var nextCodeList = this._instCategory.ImptClasses.Where(r => r.Code == row.Code).ToList();
                    foreach (var j in nextCodeList)
                    {
                        TreeNode tnNext = new TreeNode
                        {
                            Text = j.Code + "-" + j.ChildCode + j.ChildName + "(" + j.Category + "类管理)",
                            ToolTipText = "举例：" + j.Example,
                        };
                        tnNext.Tag = j;
                        tn.Nodes.Add(tnNext);
                    }
                    NodeHeader.Nodes.Add(tn);
                }
                this.treeView1.Nodes[0].Expand();
                this.treeView1.ShowNodeToolTips = true;
            };
            #endregion

            #region 控件Load事件，装载TreeView
            this.Load += (s, e) =>
            {
                loadCateData(codeList);
            };
            #endregion

            #region 单击节点事件
            this.treeView1.NodeMouseClick += (s, e) =>
                {
                    this.toolStripButton2.Enabled = e.Node.Tag != null;
                    if (e.Node.Tag == null) return;                   
                    this.CurrentImptClass = (ImptClass)e.Node.Tag;
                    this.comboBox1.SelectedIndex = this.CurrentImptClass.Category - 1;
                    this.fs.FStatus = FormStatusEnum.Edit;
                    this.CurrentImptClass = (ImptClass)e.Node.Tag;
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
                        this._instCategory.ImptClasses.Add(this.CurrentImptClass);
                    }

                    SearialiserHelper<InstCategory>.SerializeObjToFile(this._instCategory, "Category.data");
                    MessageBox.Show("保存成功！");
                    this.CurrentImptClass = new ImptClass
                    {
                        Category = 1,
                    };
                    this.imptClassBindingSource.Clear();
                    this.imptClassBindingSource.Add(this.CurrentImptClass);
                    this.comboBox1.SelectedIndex = 0;
                    loadCateData(codeList);
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
                    if (((ImptClass)this.treeView1.SelectedNode.Tag) == null) return;
                    var re = MessageBox.Show("删除分类节点吗？", "提示", MessageBoxButtons.OKCancel);
                    if (re == System.Windows.Forms.DialogResult.Cancel) return;
                    var selectedImpt = (ImptClass)this.treeView1.SelectedNode.Tag;
                    this._instCategory.ImptClasses.Remove(selectedImpt);

                    SearialiserHelper<InstCategory>.SerializeObjToFile(this._instCategory, "Category.data");
                    MessageBox.Show("删除成功！");
                    loadCateData(codeList);
                    this.CurrentImptClass = new ImptClass
                    {
                        Category=1
                    };
                    this.comboBox1.SelectedIndex = 0;
                    this.imptClassBindingSource.Clear();
                    this.imptClassBindingSource.Add(this.CurrentImptClass);
                }; 
            #endregion

            this.imptClassBindingSource.Add(this.CurrentImptClass);
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            this.fs.FStatus = FormStatusEnum.New;
            this.CurrentImptClass = new ImptClass
            {
                Category=1
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
    }
}
