using BugsBox.Pharmacy.AppClient.Common.Commands;
using BugsBox.Pharmacy.Business.Models;
using BugsBox.Pharmacy.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace BugsBox.Pharmacy.AppClient.UI.Forms.AdverseEvents
{
    public partial class QueryAdverseEvent : BaseFunctionForm
    {
        public QueryAdverseEvent()
        {
            InitializeComponent();
            pcMain.DataPaging += pcMain_DataPaging;
            pcMain.PageIndex = 1;
        }

        void pcMain_DataPaging()
        {
            LoadData();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            LoadData();
        }


        private void LoadData()
        {
            dgvMain.AutoGenerateColumns = false;
            QueryAdverseDrugEventCmd cmd = new QueryAdverseDrugEventCmd();
            cmd.Keyword = "";
            cmd.Pager = new Application.Core.PagerInfo
            {
                Index = pcMain.PageIndex,
                Size = pcMain.PageSize

            };
            var result = cmd.Execute() as AdverseDrugEvent[];

            dgvMain.DataSource = result;
        }

        private void dgvMain_CellMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            Guid g = Guid.Parse(dgvMain.Rows[e.RowIndex].Cells["Id"].Value.ToString());
            var source = dgvMain.DataSource as AdverseDrugEvent[];

            var eventItem = source.FirstOrDefault(o => o.Id == g);

            var sk = new AddAdverseEvent(eventItem);
            sk.Text = "查看不良事件";
            sk.StartPosition = FormStartPosition.CenterParent;
            sk.ShowDialog();

        }
    }
}
