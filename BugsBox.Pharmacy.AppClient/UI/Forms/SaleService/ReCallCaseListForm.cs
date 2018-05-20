using BugsBox.Pharmacy.Commands.SaleService;
using BugsBox.Pharmacy.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace BugsBox.Pharmacy.AppClient.UI.Forms.SaleService
{
    public partial class ReCallCaseListForm : BaseFunctionForm
    {
        public ReCallCaseListForm()
        {
            InitializeComponent();
            pcMain.DataPaging += pcMain_DataPaging;
            pcMain.PageIndex = 1;
        }
        void pcMain_DataPaging()
        {
            LoadData();
        }

        private void LoadData()
        {
      
            ReCallCaseListCommand cmd = new ReCallCaseListCommand();

            cmd.BeginDate = dateTimePicker1.Value;
            cmd.EndDate = dateTimePicker2.Value;

            cmd.Pager = new Application.Core.PagerInfo
            {
                Index = pcMain.PageIndex,
                Size = pcMain.PageSize

            };
            var result = cmd.Execute() as ReCallCase[];

            dgvMain.DataSource = result;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            LoadData();
        }

        private void dgvMain_CellContentDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
          
        }

        private void button2_Click(object sender, EventArgs e)
        {
            EditForm(new ReCallCase());
        }


        private void EditForm(ReCallCase eventItem)
        {
            var sk = new ReCallCaseEditForm(eventItem);
            sk.StartPosition = FormStartPosition.CenterParent;
            sk.ShowDialog();
        }

        private void dgvMain_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            Guid g = Guid.Parse(dgvMain.Rows[e.RowIndex].Cells["Id"].Value.ToString());
            var source = dgvMain.DataSource as ReCallCase[];

            var eventItem = source.FirstOrDefault(o => o.Id == g);

            EditForm(eventItem);
        }
    }
}
