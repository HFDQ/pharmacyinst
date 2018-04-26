using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace BugsBox.Pharmacy.AppClient.UI.Forms.Common
{
    public delegate void UserDefinedInstCodeEventHandler(object sender, UserDefineInstCodeEventArgs e);
    public partial class UserInstClassificationCode : Form
    {
        public event UserDefinedInstCodeEventHandler UserDefinedInstCode;
        Guid _gspLiscenceId = Guid.Empty;
        public UserInstClassificationCode(Guid gspliscenceId)
        {
            InitializeComponent();
            this._gspLiscenceId = gspliscenceId;
            this.button1.Click += button1_Click;
        }

        void button1_Click(object sender, EventArgs e)
        {
            if (UserDefinedInstCode != null)
            {
                if (string.IsNullOrWhiteSpace(this.textBox1.Text.Trim()))
                {
                    MessageBox.Show("请输入器械代码！"); return;
                }
                if (string.IsNullOrWhiteSpace(this.textBox2.Text.Trim()))
                {
                    MessageBox.Show("请输入代码说明！"); return;
                }

                BugsBox.Pharmacy.Models.GMSPLicenseBusinessScope bs = new Models.GMSPLicenseBusinessScope
                {
                    Id = Guid.NewGuid(),
                    BusinessScopeCode = this.textBox1.Text.Trim(),
                    BusinessScopeCodeMemo = this.textBox2.Text.Trim(),
                    GSPLicenseId = this._gspLiscenceId,
                };
                UserDefineInstCodeEventArgs args = new UserDefineInstCodeEventArgs
                {
                     scope=bs,
                };

                this.textBox1.Text = string.Empty;
                this.textBox2.Text = string.Empty;

                UserDefinedInstCode(this, args);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }


    }

    public class UserDefineInstCodeEventArgs : EventArgs
    {
        public BugsBox.Pharmacy.Models.GMSPLicenseBusinessScope scope { get; set; }
    }
}
