namespace BugsBox.Pharmacy.AppClient.UI.Forms.SaleService
{
    partial class ReCallEventEditForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.label2 = new System.Windows.Forms.Label();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.textBox4 = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.textBox5 = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.textBox6 = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.textBox7 = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.textBox8 = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.textBox9 = new System.Windows.Forms.TextBox();
            this.textBox10 = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.textBox11 = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.textBox12 = new System.Windows.Forms.TextBox();
            this.textBox13 = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.textBox14 = new System.Windows.Forms.TextBox();
            this.textBox15 = new System.Windows.Forms.TextBox();
            this.label15 = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.textBox16 = new System.Windows.Forms.TextBox();
            this.label17 = new System.Windows.Forms.Label();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.保存ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(367, 43);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(137, 12);
            this.label2.TabIndex = 7;
            this.label2.Text = "注册证号（备案凭证号）";
            // 
            // textBox2
            // 
            this.textBox2.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSource1, "LisenceNum", true));
            this.textBox2.Location = new System.Drawing.Point(510, 39);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(164, 21);
            this.textBox2.TabIndex = 6;
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(BugsBox.Pharmacy.Models.ReCallEvent);
            // 
            // textBox1
            // 
            this.textBox1.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSource1, "DrugName", true));
            this.textBox1.Location = new System.Drawing.Point(89, 37);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(164, 21);
            this.textBox1.TabIndex = 5;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(27, 39);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 12);
            this.label1.TabIndex = 4;
            this.label1.Text = "产品名称";
            // 
            // textBox4
            // 
            this.textBox4.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSource1, "PrincipalCompanyInfo", true));
            this.textBox4.Location = new System.Drawing.Point(86, 113);
            this.textBox4.Name = "textBox4";
            this.textBox4.Size = new System.Drawing.Size(587, 21);
            this.textBox4.TabIndex = 11;
            // 
            // label4
            // 
            this.label4.Location = new System.Drawing.Point(24, 96);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(282, 14);
            this.label4.TabIndex = 10;
            this.label4.Text = "中国境内负责单位、负责人以及联系方式";
            // 
            // textBox3
            // 
            this.textBox3.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSource1, "Manufacturing", true));
            this.textBox3.Location = new System.Drawing.Point(86, 68);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(587, 21);
            this.textBox3.TabIndex = 9;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(27, 71);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 12);
            this.label3.TabIndex = 8;
            this.label3.Text = "生产企业";
            // 
            // textBox5
            // 
            this.textBox5.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSource1, "RecallJobInfo", true));
            this.textBox5.Location = new System.Drawing.Point(83, 160);
            this.textBox5.Name = "textBox5";
            this.textBox5.Size = new System.Drawing.Size(587, 21);
            this.textBox5.TabIndex = 13;
            // 
            // label6
            // 
            this.label6.Location = new System.Drawing.Point(24, 137);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(223, 20);
            this.label6.TabIndex = 12;
            this.label6.Text = "召回工作联系人和联系方式";
            // 
            // label5
            // 
            this.label5.Location = new System.Drawing.Point(2, 184);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(78, 20);
            this.label5.TabIndex = 14;
            this.label5.Text = "产品适用范围";
            // 
            // textBox6
            // 
            this.textBox6.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSource1, "ProductScope", true));
            this.textBox6.Location = new System.Drawing.Point(83, 187);
            this.textBox6.Multiline = true;
            this.textBox6.Name = "textBox6";
            this.textBox6.Size = new System.Drawing.Size(587, 59);
            this.textBox6.TabIndex = 15;
            // 
            // label7
            // 
            this.label7.Location = new System.Drawing.Point(2, 252);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(78, 20);
            this.label7.TabIndex = 16;
            this.label7.Text = "涉及地区国家";
            // 
            // textBox7
            // 
            this.textBox7.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSource1, "AreaInvolved", true));
            this.textBox7.Location = new System.Drawing.Point(83, 252);
            this.textBox7.Name = "textBox7";
            this.textBox7.Size = new System.Drawing.Size(587, 21);
            this.textBox7.TabIndex = 17;
            // 
            // label8
            // 
            this.label8.Location = new System.Drawing.Point(2, 281);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(78, 20);
            this.label8.TabIndex = 18;
            this.label8.Text = "涉及产品型号";
            // 
            // textBox8
            // 
            this.textBox8.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSource1, "ProductInvolved", true));
            this.textBox8.Location = new System.Drawing.Point(83, 281);
            this.textBox8.Name = "textBox8";
            this.textBox8.Size = new System.Drawing.Size(587, 21);
            this.textBox8.TabIndex = 19;
            // 
            // label9
            // 
            this.label9.Location = new System.Drawing.Point(2, 311);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(194, 20);
            this.label9.TabIndex = 20;
            this.label9.Text = "涉及产品生产（进口或中国）数量";
            // 
            // textBox9
            // 
            this.textBox9.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSource1, "ProductMakeCountInvolved", true));
            this.textBox9.Location = new System.Drawing.Point(202, 308);
            this.textBox9.Name = "textBox9";
            this.textBox9.Size = new System.Drawing.Size(468, 21);
            this.textBox9.TabIndex = 21;
            // 
            // textBox10
            // 
            this.textBox10.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSource1, "ProductSaleCountInvolved", true));
            this.textBox10.Location = new System.Drawing.Point(202, 338);
            this.textBox10.Name = "textBox10";
            this.textBox10.Size = new System.Drawing.Size(468, 21);
            this.textBox10.TabIndex = 23;
            // 
            // label10
            // 
            this.label10.Location = new System.Drawing.Point(38, 338);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(149, 20);
            this.label10.TabIndex = 22;
            this.label10.Text = "涉及产品在中国的销售数量";
            // 
            // label11
            // 
            this.label11.Location = new System.Drawing.Point(12, 367);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(59, 20);
            this.label11.TabIndex = 24;
            this.label11.Text = "识别信息";
            // 
            // textBox11
            // 
            this.textBox11.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSource1, "IdentifyInfo", true));
            this.textBox11.Location = new System.Drawing.Point(77, 364);
            this.textBox11.Name = "textBox11";
            this.textBox11.Size = new System.Drawing.Size(164, 21);
            this.textBox11.TabIndex = 25;
            // 
            // label12
            // 
            this.label12.Location = new System.Drawing.Point(12, 401);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(47, 32);
            this.label12.TabIndex = 26;
            this.label12.Text = "召回原因简述";
            // 
            // textBox12
            // 
            this.textBox12.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSource1, "RecallReason", true));
            this.textBox12.Location = new System.Drawing.Point(77, 398);
            this.textBox12.Multiline = true;
            this.textBox12.Name = "textBox12";
            this.textBox12.Size = new System.Drawing.Size(587, 59);
            this.textBox12.TabIndex = 27;
            // 
            // textBox13
            // 
            this.textBox13.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSource1, "CorrectiveInfo", true));
            this.textBox13.Location = new System.Drawing.Point(77, 463);
            this.textBox13.Multiline = true;
            this.textBox13.Name = "textBox13";
            this.textBox13.Size = new System.Drawing.Size(587, 59);
            this.textBox13.TabIndex = 29;
            // 
            // label13
            // 
            this.label13.Location = new System.Drawing.Point(12, 466);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(47, 32);
            this.label13.TabIndex = 28;
            this.label13.Text = "纠正行动简述";
            // 
            // label14
            // 
            this.label14.Location = new System.Drawing.Point(12, 540);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(59, 20);
            this.label14.TabIndex = 30;
            this.label14.Text = "报告单位";
            // 
            // textBox14
            // 
            this.textBox14.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSource1, "ReportUnit", true));
            this.textBox14.Location = new System.Drawing.Point(77, 537);
            this.textBox14.Name = "textBox14";
            this.textBox14.Size = new System.Drawing.Size(164, 21);
            this.textBox14.TabIndex = 31;
            // 
            // textBox15
            // 
            this.textBox15.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSource1, "Principal", true));
            this.textBox15.Location = new System.Drawing.Point(302, 536);
            this.textBox15.Name = "textBox15";
            this.textBox15.Size = new System.Drawing.Size(164, 21);
            this.textBox15.TabIndex = 32;
            // 
            // label15
            // 
            this.label15.Location = new System.Drawing.Point(247, 537);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(49, 20);
            this.label15.TabIndex = 33;
            this.label15.Text = "负责人";
            // 
            // label16
            // 
            this.label16.Location = new System.Drawing.Point(472, 536);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(47, 20);
            this.label16.TabIndex = 34;
            this.label16.Text = "报告人";
            // 
            // textBox16
            // 
            this.textBox16.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSource1, "Reporter", true));
            this.textBox16.Location = new System.Drawing.Point(511, 535);
            this.textBox16.Name = "textBox16";
            this.textBox16.Size = new System.Drawing.Size(153, 21);
            this.textBox16.TabIndex = 35;
            // 
            // label17
            // 
            this.label17.Location = new System.Drawing.Point(12, 569);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(59, 20);
            this.label17.TabIndex = 36;
            this.label17.Text = "报告日期";
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.保存ToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(770, 25);
            this.menuStrip1.TabIndex = 38;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // 保存ToolStripMenuItem
            // 
            this.保存ToolStripMenuItem.Name = "保存ToolStripMenuItem";
            this.保存ToolStripMenuItem.Size = new System.Drawing.Size(44, 21);
            this.保存ToolStripMenuItem.Text = "保存";
            this.保存ToolStripMenuItem.Click += new System.EventHandler(this.保存ToolStripMenuItem_Click);
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.DataBindings.Add(new System.Windows.Forms.Binding("Value", this.bindingSource1, "ReportDate", true));
            this.dateTimePicker1.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bindingSource1, "ReportDate", true));
            this.dateTimePicker1.Location = new System.Drawing.Point(77, 566);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(164, 21);
            this.dateTimePicker1.TabIndex = 39;
            // 
            // ReCallEventEditForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(770, 605);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.label17);
            this.Controls.Add(this.textBox16);
            this.Controls.Add(this.label16);
            this.Controls.Add(this.label15);
            this.Controls.Add(this.textBox15);
            this.Controls.Add(this.textBox14);
            this.Controls.Add(this.label14);
            this.Controls.Add(this.textBox13);
            this.Controls.Add(this.label13);
            this.Controls.Add(this.textBox12);
            this.Controls.Add(this.label12);
            this.Controls.Add(this.textBox11);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.textBox10);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.textBox9);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.textBox8);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.textBox7);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.textBox6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.textBox5);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.textBox4);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.textBox3);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "ReCallEventEditForm";
            this.Text = "医疗器械事件召回报告";
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBox4;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textBox5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox textBox6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox textBox7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox textBox8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox textBox9;
        private System.Windows.Forms.TextBox textBox10;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox textBox11;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox textBox12;
        private System.Windows.Forms.TextBox textBox13;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.TextBox textBox14;
        private System.Windows.Forms.TextBox textBox15;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.TextBox textBox16;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem 保存ToolStripMenuItem;
        private System.Windows.Forms.BindingSource bindingSource1;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
    }
}