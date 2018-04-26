using BugsBox.Pharmacy.AppClient.Common.Commands;
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
    public partial class AddAdverseEvent : BaseFunctionForm
    {
        public AddAdverseEvent()
        {
            InitializeComponent();
        }
        AdverseDrugEvent _item;
        public AddAdverseEvent(AdverseDrugEvent item)
        {
            InitializeComponent();
            _item = item;
            toolStrip1.Visible = false;
            txteventtitle.Text = item.EventTitle;
            txteventdesciption.Text = item.EventDescription;
            dtoccurrencyon.Value = DateTime.Parse(item.OccurrenceTime);

        }
        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            AdverseDrugEvent ev = new AdverseDrugEvent
            {
                EventTitle = txteventtitle.Text,
                EventDescription = txteventdesciption.Text,
                OccurrenceTime = dtoccurrencyon.Value.ToString(),
                CreateTime = DateTime.Now,
                CreateUserId = CurrentUser.Id,
                UpdateTime = DateTime.Now,
                UpdateUserId = CurrentUser.Id,
            };

            AddAdverseDrugEventCmd cmd = new AddAdverseDrugEventCmd();

            cmd.Event = ev;

            cmd.Execute();

            MessageBox.Show("添加成功");
        }
    }
}
