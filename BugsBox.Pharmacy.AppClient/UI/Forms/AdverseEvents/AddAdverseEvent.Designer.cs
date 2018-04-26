namespace BugsBox.Pharmacy.AppClient.UI.Forms.AdverseEvents
{
    partial class AddAdverseEvent
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
            this.label1 = new System.Windows.Forms.Label();
            this.txteventtitle = new System.Windows.Forms.TextBox();
            this.txteventdesciption = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.dtoccurrencyon = new System.Windows.Forms.DateTimePicker();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.toolStripbtnSave = new System.Windows.Forms.ToolStripButton();
            this.toolStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(23, 46);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 12);
            this.label1.TabIndex = 0;
            this.label1.Text = "事件名称";
            // 
            // txteventtitle
            // 
            this.txteventtitle.Location = new System.Drawing.Point(93, 46);
            this.txteventtitle.Name = "txteventtitle";
            this.txteventtitle.Size = new System.Drawing.Size(600, 21);
            this.txteventtitle.TabIndex = 1;
            // 
            // txteventdesciption
            // 
            this.txteventdesciption.Location = new System.Drawing.Point(93, 85);
            this.txteventdesciption.Multiline = true;
            this.txteventdesciption.Name = "txteventdesciption";
            this.txteventdesciption.Size = new System.Drawing.Size(600, 128);
            this.txteventdesciption.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(23, 88);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 12);
            this.label2.TabIndex = 2;
            this.label2.Text = "事件描述";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(32, 235);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 12);
            this.label3.TabIndex = 4;
            this.label3.Text = "发生时间";
            // 
            // dtoccurrencyon
            // 
            this.dtoccurrencyon.CustomFormat = "yyyy-MM-dd HH:mm:ss";
            this.dtoccurrencyon.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtoccurrencyon.Location = new System.Drawing.Point(93, 235);
            this.dtoccurrencyon.Name = "dtoccurrencyon";
            this.dtoccurrencyon.ShowUpDown = true;
            this.dtoccurrencyon.Size = new System.Drawing.Size(200, 21);
            this.dtoccurrencyon.TabIndex = 5;
            // 
            // toolStrip1
            // 
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripbtnSave});
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Size = new System.Drawing.Size(705, 25);
            this.toolStrip1.TabIndex = 6;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // toolStripbtnSave
            // 
            this.toolStripbtnSave.Image = global::BugsBox.Pharmacy.AppClient.Properties.Resources.Save1;
            this.toolStripbtnSave.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripbtnSave.Name = "toolStripbtnSave";
            this.toolStripbtnSave.Size = new System.Drawing.Size(52, 22);
            this.toolStripbtnSave.Text = "保存";
            this.toolStripbtnSave.Click += new System.EventHandler(this.toolStripButton1_Click);
            // 
            // AddAdverseEvent
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(705, 276);
            this.Controls.Add(this.toolStrip1);
            this.Controls.Add(this.dtoccurrencyon);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txteventdesciption);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txteventtitle);
            this.Controls.Add(this.label1);
            this.Name = "AddAdverseEvent";
            this.Text = "不良事件登记";
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txteventtitle;
        private System.Windows.Forms.TextBox txteventdesciption;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DateTimePicker dtoccurrencyon;
        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolStripButton toolStripbtnSave;
    }
}