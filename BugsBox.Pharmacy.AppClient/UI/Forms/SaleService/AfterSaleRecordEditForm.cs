﻿using BugsBox.Pharmacy.AppClient.Common;
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
    public partial class AfterSaleRecordEditForm : Form
    {
        AfterSaleRecord record;

        public AfterSaleRecordEditForm(AfterSaleRecord _record)
        {
            InitializeComponent();

            record = _record;

            this.bindingSource1.Add(record);
        }
        private void 保存ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.bindingSource1.EndEdit();
            if (record.CreateUserId == Guid.Empty)
            {
                record.CreateUserId = AppClientContext.CurrentUser.Id;
            }
            record.UpdateUserId = AppClientContext.CurrentUser.Id;
            AfterSaleRecordEditCommand command = new AfterSaleRecordEditCommand
            {
                Record = record
            };
            command.Execute();
            MessageBox.Show("保存成功");

            this.Close();
        }



        private void 图片ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            using (Forms.BaseDataManage.Form_Photo frm = new Forms.BaseDataManage.Form_Photo(16, record.Id))
            {
                frm.ShowDialog();

            }
        }
    }
}
