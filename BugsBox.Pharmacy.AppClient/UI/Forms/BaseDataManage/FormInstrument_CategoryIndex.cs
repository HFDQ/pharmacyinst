using InstCategoryIdx;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace BugsBox.Pharmacy.AppClient.UI.Forms.BaseDataManage
{
    public partial class FormInstrument_CategoryIndex : Form
    {
        NewInstCategory _instCategory = null;//分类目录全体数据

        public event SelectInstrumentIndexCodeHandler SelectInstrumentIndexCode;
        public FormInstrument_CategoryIndex(NewInstCategory instC)
        {
            InitializeComponent();

            #region 读入分类目录
            this._instCategory = instC;
            TreeNode NodeHeader = new TreeNode();
            NodeHeader.Text = "医疗器械分类树";
            NodeHeader.Name = "topNode";
            NodeHeader.ToolTipText = "请选择分类目录";
            this.treeView1.Nodes.Add(NodeHeader);

            List<Tuple<int, string>> codeList = new List<Tuple<int, string>>();//头部三个管理类别
            #region 第二层，3个管理类别
            codeList.Add(new Tuple<int, string>(1, "I级管理"));
            codeList.Add(new Tuple<int, string>(2, "II级管理"));
            codeList.Add(new Tuple<int, string>(3, "III级管理"));
            #endregion
            #endregion
            #region 组织分类树:loadCateData
            Action<List<NewCategory>> loadCateData = (data) =>
                {
                    this.treeView1.Nodes[0].Nodes.Clear();
                    foreach (var row in codeList)//三个管理分类
                    {
                        TreeNode tn = new TreeNode();
                        tn.Name = row.Item1 + "(" + row.Item2 + ")";
                        tn.Text = row.Item2;

                        tn.Tag = "管理分类：" + row.Item1;
                        var nextCodeList = data.Where(r => r.Category == row.Item1).Distinct(r => r.Code).ToList();

                        foreach (var j in nextCodeList)//满足分类管理码的记录
                        {
                            TreeNode tnSecond = new TreeNode();
                            tnSecond.Text = j.Idx + "(" + j.CodeName + ")";
                            tnSecond.Name = j.Idx.ToString();
                            tnSecond.ToolTipText = "产品目录";

                            tnSecond.Tag = "产品目录序号：" + j.Code;
                            var ChildList = data.Where(r => r.Code == j.Code && r.Category == j.Category).ToList();
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
                                    tnch.Nodes.Add(tnla);
                                }
                                tnSecond.Nodes.Add(tnch);
                            }
                            tn.Nodes.Add(tnSecond);
                        }

                        NodeHeader.Nodes.Add(tn);
                    }
                    
                    this.treeView1.Nodes[0].ExpandAll();
                    this.treeView1.ShowNodeToolTips = true;
                };
            #endregion

            #region 控件Load事件
            this.Load += (s, e) =>
                {
                    loadCateData(instC.ListCategory);
                };
            #endregion

            #region 分类码搜索
            this.textBox1.TextChanged += (s, e) =>
                {
                    if (this.textBox1.Text.Trim().Length <= 2) return;
                    var list = instC.ListCategory.Where(r => r.Comparison.Contains(this.textBox1.Text.Trim())).OrderBy(r => r.Code).ToList();
                    loadCateData(list);
                };
            #endregion

            #region 分类码搜索
            this.textBox2.TextChanged += (s, e) =>
            {
                if (this.textBox2.Text.Trim().Length <= 2) return;
                var list = instC.ListCategory.Where(r => r.StandardCode.StartsWith(this.textBox2.Text.Trim())).OrderBy(r => r.Code).ToList();
                loadCateData(list);
            };
            #endregion

            #region 分类树节点双击选择代码
            this.treeView1.NodeMouseDoubleClick += (s, e) =>
               {
                   if (e.Button != System.Windows.Forms.MouseButtons.Left) return;
                   if (e.Node.Tag == null ||!(e.Node.Tag is NewCategory)) return;
                   var cnode = e.Node;
                   var c = (NewCategory)cnode.Tag;
                   if (SelectInstrumentIndexCode == null) return;
                   InstrumentCateIndexArgs ev = new InstrumentCateIndexArgs
                   {
                       InstrumentIndexCode = c.StandardCode,
                       Category = c.Category,
                       Description = c.Description
                   };
                   SelectInstrumentIndexCode(this, ev);
               };
            #endregion

            #region 分类树单击事件
            this.treeView1.NodeMouseClick += (s, e) =>
            {
                if (e.Node.Tag == null || ! (e.Node.Tag is NewCategory)) return;
                var i= (NewCategory)e.Node.Tag;
                this.label2.Text = "完整代码：" + i.StandardCode + "\r\n";
                this.label2.Text += "管理分类：" + i.CategoryType + "\r\n";
                this.label2.Text += "产品描述：\r\n    " + i.Description.Trim() + "\r\n";
                this.label2.Text += "预期用途：\r\n    " + i.Usage.Trim() + "\r\n";
                this.label2.Text += "品名举例：\r\n    " + i.Example.Trim() + "\r\n";
                this.label2.Text += "旧版对照表：\r\n    " + i.Comparison;
            };
            #endregion
        }
    }

    #region 分类目录选择事件参数
    public class InstrumentCateIndexArgs : EventArgs
    {
        public string InstrumentIndexCode { get; set; }

        public string Description { get; set; }

        public int Category { get; set; }
    }
    #endregion

    public delegate void SelectInstrumentIndexCodeHandler(object sender, InstrumentCateIndexArgs e);
}
