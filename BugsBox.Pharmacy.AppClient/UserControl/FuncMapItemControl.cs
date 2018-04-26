using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using BugsBox.Pharmacy.AppClient.UI.Forms;
using WeifenLuo.WinFormsUI.Docking;

namespace BugsBox.Pharmacy.AppClient.UserControls
{
    public partial class FuncMapItemControl : UserControl
    {
        public FuncMapItemControl(FuncMapItem funcMapItem)
        {
            InitializeComponent();

            label1.Text = funcMapItem.Header.Title;
            var btnCountatsinglerow = 10.0;
            var i = funcMapItem.Children.Count / btnCountatsinglerow;

            flowLayoutPanel1.Height = int.Parse((Math.Ceiling(i) * 30).ToString());
            this.Height = flowLayoutPanel1.Height + 30;
            foreach (var item in funcMapItem.Children)
            {
                Button btn = new Button();
                btn.Text = item.Title;
                btn.Tag = item;
                btn.AutoSize = true;
                btn.Click += btn_Click;
                flowLayoutPanel1.Controls.Add(btn);
            }
            this.SizeChanged += FuncMapItemControl_SizeChanged;
        }

        void btn_Click(object sender, EventArgs e)
        {
            // 设置显示图标的变换
            NodeTag nodeTag = (NodeTag)((Button)sender).Tag;
            BugsBox.Pharmacy.AppClient.Menu.Instance.TriggerClick(nodeTag);
        }


        void FuncMapItemControl_SizeChanged(object sender, EventArgs e)
        {
            this.flowLayoutPanel1.Width = this.Width - 5;
        }

    }
}
