using BugsBox.Pharmacy.Service.Models;
using BugsBox.Pharmacy.Services;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace BugsBox.Pharmacy.ServiceHost.Forms
{
    public partial class VerifyPrdKey : Form
    {
        public VerifyPrdKey()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ProductKeyVerifyService.Instance.ProductKeyChanged += Alert;

            ProductKeyVerifyService.Instance.Register(textBox1.Text);

            ProductKeyVerifyService.Instance.ProductKeyChanged -= Alert;
        }
        private void Alert(ProductKeyChangedArg arg)
        {
            MessageBox.Show(arg.Message);

        }
    }
}
