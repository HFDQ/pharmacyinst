using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using WeifenLuo.WinFormsUI.Docking;

namespace BugsBox.Pharmacy.AppClient.UI.Forms
{
    public partial class GrneralPurchaseProcessFrm : BaseFunctionForm
    {
        public GrneralPurchaseProcessFrm()
        {
            InitializeComponent();

            foreach (var control in groupBox2.Controls)
            {
                Button btn = control as Button;
                if (btn != null)
                {
                    var nodeTag = BugsBox.Pharmacy.AppClient.Menu.GeneralSaleProcessTags.FirstOrDefault(o => o.Title == btn.Tag.ToString());
                    if (nodeTag != null)
                    {
                        btn.Enabled = nodeTag.HasPermission;
                        btn.Tag = nodeTag;
                    }
                    btn.Click += btn_Click;
                }

            }
        }
        void btn_Click(object sender, EventArgs e)
        {
            NodeTag nodeTag = (NodeTag)((Button)sender).Tag;
            BugsBox.Pharmacy.AppClient.Menu.Instance.TriggerClick(nodeTag);
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }
    }
}
