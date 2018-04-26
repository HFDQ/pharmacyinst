namespace BugsBox.Pharmacy.AppClient.UI.Forms.Common
{
    partial class FormGSPLicense
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormGSPLicense));
            this.bugsBoxFocusColorProvider1 = new BugsBox.Windows.Forms.BugsBoxFocusColorProvider(this.components);
            this.textBoxStatus = new System.Windows.Forms.TextBox();
            this.textBoxQualityHeader = new System.Windows.Forms.TextBox();
            this.gSPLicenseBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.textBoxHeader = new System.Windows.Forms.TextBox();
            this.textBoxLegalPerson = new System.Windows.Forms.TextBox();
            this.comboBoxBusinessTypeId = new System.Windows.Forms.ComboBox();
            this.textBoxWarehouseAddress = new System.Windows.Forms.TextBox();
            this.textBoxChangeRecord = new System.Windows.Forms.TextBox();
            this.richTextBox1 = new System.Windows.Forms.RichTextBox();
            this.requiredFieldValidator4 = new CustomValidatorsLibrary.RequiredFieldValidator();
            this.requiredFieldValidator3 = new CustomValidatorsLibrary.RequiredFieldValidator();
            this.requiredFieldValidator2 = new CustomValidatorsLibrary.RequiredFieldValidator();
            this.requiredFieldValidator1 = new CustomValidatorsLibrary.RequiredFieldValidator();
            this.requiredFieldValidator5 = new CustomValidatorsLibrary.RequiredFieldValidator();
            this.bugsBoxFocusColorProvider2 = new BugsBox.Windows.Forms.BugsBoxFocusColorProvider(this.components);
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.label15 = new System.Windows.Forms.Label();
            this.buttonSave = new System.Windows.Forms.Button();
            this.buttonClose = new System.Windows.Forms.Button();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.label13 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.label14 = new System.Windows.Forms.Label();
            this.groupBox6 = new System.Windows.Forms.GroupBox();
            this.groupBox7 = new System.Windows.Forms.GroupBox();
            this.label12 = new System.Windows.Forms.Label();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.panel1 = new System.Windows.Forms.Panel();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.treeView1 = new System.Windows.Forms.TreeView();
            this.label2 = new System.Windows.Forms.Label();
            this.textBox2 = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.gSPLicenseBindingSource)).BeginInit();
            this.groupBox5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.groupBox4.SuspendLayout();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            this.groupBox6.SuspendLayout();
            this.groupBox7.SuspendLayout();
            this.panel1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // textBoxStatus
            // 
            this.bugsBoxFocusColorProvider1.SetFocusBackColor(this.textBoxStatus, System.Drawing.Color.MediumBlue);
            this.bugsBoxFocusColorProvider2.SetFocusBackColor(this.textBoxStatus, System.Drawing.Color.MediumBlue);
            this.bugsBoxFocusColorProvider2.SetFocusForeColor(this.textBoxStatus, System.Drawing.Color.White);
            this.bugsBoxFocusColorProvider1.SetFocusForeColor(this.textBoxStatus, System.Drawing.Color.White);
            this.textBoxStatus.Location = new System.Drawing.Point(111, 20);
            this.textBoxStatus.Margin = new System.Windows.Forms.Padding(4);
            this.textBoxStatus.Name = "textBoxStatus";
            this.textBoxStatus.ReadOnly = true;
            this.textBoxStatus.Size = new System.Drawing.Size(325, 28);
            this.textBoxStatus.TabIndex = 22;
            // 
            // textBoxQualityHeader
            // 
            this.textBoxQualityHeader.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.gSPLicenseBindingSource, "QualityHeader", true));
            this.bugsBoxFocusColorProvider1.SetFocusBackColor(this.textBoxQualityHeader, System.Drawing.Color.MediumBlue);
            this.bugsBoxFocusColorProvider2.SetFocusBackColor(this.textBoxQualityHeader, System.Drawing.Color.MediumBlue);
            this.bugsBoxFocusColorProvider2.SetFocusForeColor(this.textBoxQualityHeader, System.Drawing.Color.White);
            this.bugsBoxFocusColorProvider1.SetFocusForeColor(this.textBoxQualityHeader, System.Drawing.Color.White);
            this.textBoxQualityHeader.Location = new System.Drawing.Point(111, 50);
            this.textBoxQualityHeader.Margin = new System.Windows.Forms.Padding(4);
            this.textBoxQualityHeader.Name = "textBoxQualityHeader";
            this.textBoxQualityHeader.Size = new System.Drawing.Size(208, 28);
            this.textBoxQualityHeader.TabIndex = 12;
            // 
            // gSPLicenseBindingSource
            // 
            this.gSPLicenseBindingSource.DataSource = typeof(BugsBox.Pharmacy.Models.GSPLicense);
            // 
            // textBoxHeader
            // 
            this.textBoxHeader.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.gSPLicenseBindingSource, "Header", true));
            this.bugsBoxFocusColorProvider1.SetFocusBackColor(this.textBoxHeader, System.Drawing.Color.MediumBlue);
            this.bugsBoxFocusColorProvider2.SetFocusBackColor(this.textBoxHeader, System.Drawing.Color.MediumBlue);
            this.bugsBoxFocusColorProvider2.SetFocusForeColor(this.textBoxHeader, System.Drawing.Color.White);
            this.bugsBoxFocusColorProvider1.SetFocusForeColor(this.textBoxHeader, System.Drawing.Color.White);
            this.textBoxHeader.Location = new System.Drawing.Point(428, 16);
            this.textBoxHeader.Margin = new System.Windows.Forms.Padding(4);
            this.textBoxHeader.Name = "textBoxHeader";
            this.textBoxHeader.Size = new System.Drawing.Size(172, 28);
            this.textBoxHeader.TabIndex = 10;
            // 
            // textBoxLegalPerson
            // 
            this.textBoxLegalPerson.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.gSPLicenseBindingSource, "LegalPerson", true));
            this.bugsBoxFocusColorProvider1.SetFocusBackColor(this.textBoxLegalPerson, System.Drawing.Color.MediumBlue);
            this.bugsBoxFocusColorProvider2.SetFocusBackColor(this.textBoxLegalPerson, System.Drawing.Color.MediumBlue);
            this.bugsBoxFocusColorProvider2.SetFocusForeColor(this.textBoxLegalPerson, System.Drawing.Color.White);
            this.bugsBoxFocusColorProvider1.SetFocusForeColor(this.textBoxLegalPerson, System.Drawing.Color.White);
            this.textBoxLegalPerson.Location = new System.Drawing.Point(663, 16);
            this.textBoxLegalPerson.Margin = new System.Windows.Forms.Padding(4);
            this.textBoxLegalPerson.Name = "textBoxLegalPerson";
            this.textBoxLegalPerson.Size = new System.Drawing.Size(180, 28);
            this.textBoxLegalPerson.TabIndex = 11;
            // 
            // comboBoxBusinessTypeId
            // 
            this.comboBoxBusinessTypeId.BackColor = System.Drawing.SystemColors.Window;
            this.comboBoxBusinessTypeId.CausesValidation = false;
            this.comboBoxBusinessTypeId.DataBindings.Add(new System.Windows.Forms.Binding("SelectedValue", this.gSPLicenseBindingSource, "BusinessTypeId", true));
            this.comboBoxBusinessTypeId.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.bugsBoxFocusColorProvider2.SetFocusBackColor(this.comboBoxBusinessTypeId, System.Drawing.Color.MediumBlue);
            this.bugsBoxFocusColorProvider1.SetFocusBackColor(this.comboBoxBusinessTypeId, System.Drawing.Color.MediumBlue);
            this.bugsBoxFocusColorProvider1.SetFocusForeColor(this.comboBoxBusinessTypeId, System.Drawing.Color.White);
            this.bugsBoxFocusColorProvider2.SetFocusForeColor(this.comboBoxBusinessTypeId, System.Drawing.Color.White);
            this.comboBoxBusinessTypeId.FormattingEnabled = true;
            this.comboBoxBusinessTypeId.Location = new System.Drawing.Point(111, 18);
            this.comboBoxBusinessTypeId.Margin = new System.Windows.Forms.Padding(4);
            this.comboBoxBusinessTypeId.Name = "comboBoxBusinessTypeId";
            this.comboBoxBusinessTypeId.Size = new System.Drawing.Size(208, 26);
            this.comboBoxBusinessTypeId.TabIndex = 9;
            // 
            // textBoxWarehouseAddress
            // 
            this.textBoxWarehouseAddress.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.gSPLicenseBindingSource, "WarehouseAddress", true));
            this.bugsBoxFocusColorProvider1.SetFocusBackColor(this.textBoxWarehouseAddress, System.Drawing.Color.MediumBlue);
            this.bugsBoxFocusColorProvider2.SetFocusBackColor(this.textBoxWarehouseAddress, System.Drawing.Color.MediumBlue);
            this.bugsBoxFocusColorProvider2.SetFocusForeColor(this.textBoxWarehouseAddress, System.Drawing.Color.White);
            this.bugsBoxFocusColorProvider1.SetFocusForeColor(this.textBoxWarehouseAddress, System.Drawing.Color.White);
            this.textBoxWarehouseAddress.Location = new System.Drawing.Point(428, 50);
            this.textBoxWarehouseAddress.Margin = new System.Windows.Forms.Padding(4);
            this.textBoxWarehouseAddress.Name = "textBoxWarehouseAddress";
            this.textBoxWarehouseAddress.Size = new System.Drawing.Size(415, 28);
            this.textBoxWarehouseAddress.TabIndex = 14;
            // 
            // textBoxChangeRecord
            // 
            this.textBoxChangeRecord.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.gSPLicenseBindingSource, "ChangeRecord", true));
            this.bugsBoxFocusColorProvider2.SetFocusBackColor(this.textBoxChangeRecord, System.Drawing.Color.MediumBlue);
            this.bugsBoxFocusColorProvider1.SetFocusBackColor(this.textBoxChangeRecord, System.Drawing.Color.MediumBlue);
            this.bugsBoxFocusColorProvider1.SetFocusForeColor(this.textBoxChangeRecord, System.Drawing.Color.White);
            this.bugsBoxFocusColorProvider2.SetFocusForeColor(this.textBoxChangeRecord, System.Drawing.Color.White);
            this.textBoxChangeRecord.Location = new System.Drawing.Point(95, 28);
            this.textBoxChangeRecord.Margin = new System.Windows.Forms.Padding(4);
            this.textBoxChangeRecord.Multiline = true;
            this.textBoxChangeRecord.Name = "textBoxChangeRecord";
            this.textBoxChangeRecord.Size = new System.Drawing.Size(510, 98);
            this.textBoxChangeRecord.TabIndex = 28;
            // 
            // richTextBox1
            // 
            this.richTextBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.bugsBoxFocusColorProvider1.SetFocusBackColor(this.richTextBox1, System.Drawing.Color.LightSkyBlue);
            this.bugsBoxFocusColorProvider2.SetFocusBackColor(this.richTextBox1, System.Drawing.Color.LightSkyBlue);
            this.bugsBoxFocusColorProvider1.SetFocusForeColor(this.richTextBox1, System.Drawing.Color.White);
            this.bugsBoxFocusColorProvider2.SetFocusForeColor(this.richTextBox1, System.Drawing.Color.White);
            this.richTextBox1.Location = new System.Drawing.Point(3, 24);
            this.richTextBox1.Name = "richTextBox1";
            this.richTextBox1.ReadOnly = true;
            this.richTextBox1.Size = new System.Drawing.Size(668, 420);
            this.richTextBox1.TabIndex = 0;
            this.richTextBox1.Text = "";
            // 
            // requiredFieldValidator4
            // 
            this.requiredFieldValidator4.ErrorMessage = "请您输入证书地址";
            this.requiredFieldValidator4.Icon = ((System.Drawing.Icon)(resources.GetObject("requiredFieldValidator4.Icon")));
            // 
            // requiredFieldValidator3
            // 
            this.requiredFieldValidator3.ErrorMessage = "请您输入企业名称";
            this.requiredFieldValidator3.Icon = ((System.Drawing.Icon)(resources.GetObject("requiredFieldValidator3.Icon")));
            // 
            // requiredFieldValidator2
            // 
            this.requiredFieldValidator2.ErrorMessage = "请您输入证书号";
            this.requiredFieldValidator2.Icon = ((System.Drawing.Icon)(resources.GetObject("requiredFieldValidator2.Icon")));
            // 
            // requiredFieldValidator1
            // 
            this.requiredFieldValidator1.ErrorMessage = "请您输入证书名称";
            this.requiredFieldValidator1.Icon = ((System.Drawing.Icon)(resources.GetObject("requiredFieldValidator1.Icon")));
            // 
            // requiredFieldValidator5
            // 
            this.requiredFieldValidator5.ErrorMessage = "请您输入发证机关";
            this.requiredFieldValidator5.Icon = ((System.Drawing.Icon)(resources.GetObject("requiredFieldValidator5.Icon")));
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.pictureBox1);
            this.groupBox5.Controls.Add(this.textBoxStatus);
            this.groupBox5.Controls.Add(this.label15);
            this.groupBox5.Controls.Add(this.buttonSave);
            this.groupBox5.Controls.Add(this.buttonClose);
            this.groupBox5.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.groupBox5.Location = new System.Drawing.Point(0, 702);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(1039, 62);
            this.groupBox5.TabIndex = 14;
            this.groupBox5.TabStop = false;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::BugsBox.Pharmacy.AppClient.Properties.Resources.Image_Add;
            this.pictureBox1.Location = new System.Drawing.Point(816, 16);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(4);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(36, 36);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 23;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(16, 26);
            this.label15.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(80, 18);
            this.label15.TabIndex = 21;
            this.label15.Text = "有效状态";
            // 
            // buttonSave
            // 
            this.buttonSave.Location = new System.Drawing.Point(518, 16);
            this.buttonSave.Margin = new System.Windows.Forms.Padding(4);
            this.buttonSave.Name = "buttonSave";
            this.buttonSave.Size = new System.Drawing.Size(112, 34);
            this.buttonSave.TabIndex = 19;
            this.buttonSave.Text = "保存(&S)";
            this.buttonSave.UseVisualStyleBackColor = true;
            this.buttonSave.Click += new System.EventHandler(this.buttonSave_Click);
            // 
            // buttonClose
            // 
            this.buttonClose.CausesValidation = false;
            this.buttonClose.Location = new System.Drawing.Point(642, 16);
            this.buttonClose.Margin = new System.Windows.Forms.Padding(4);
            this.buttonClose.Name = "buttonClose";
            this.buttonClose.Size = new System.Drawing.Size(112, 34);
            this.buttonClose.TabIndex = 20;
            this.buttonClose.Text = "关闭(&X)";
            this.buttonClose.UseVisualStyleBackColor = true;
            this.buttonClose.Click += new System.EventHandler(this.buttonClose_Click);
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.textBoxQualityHeader);
            this.groupBox4.Controls.Add(this.textBoxHeader);
            this.groupBox4.Controls.Add(this.textBoxLegalPerson);
            this.groupBox4.Controls.Add(this.comboBoxBusinessTypeId);
            this.groupBox4.Controls.Add(this.textBoxWarehouseAddress);
            this.groupBox4.Controls.Add(this.label13);
            this.groupBox4.Controls.Add(this.label8);
            this.groupBox4.Controls.Add(this.label5);
            this.groupBox4.Controls.Add(this.label6);
            this.groupBox4.Controls.Add(this.label4);
            this.groupBox4.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox4.Location = new System.Drawing.Point(0, 0);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(1039, 86);
            this.groupBox4.TabIndex = 18;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "基本信息";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(610, 22);
            this.label13.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(44, 18);
            this.label13.TabIndex = 18;
            this.label13.Text = "法人";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(15, 22);
            this.label8.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(80, 18);
            this.label8.TabIndex = 17;
            this.label8.Text = "经营方式";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(10, 56);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(98, 18);
            this.label5.TabIndex = 15;
            this.label5.Text = "质量负责人";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(330, 56);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(80, 18);
            this.label6.TabIndex = 16;
            this.label6.Text = "仓库地址";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(330, 20);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(98, 18);
            this.label4.TabIndex = 13;
            this.label4.Text = "企业负责人";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.splitContainer1);
            this.groupBox3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox3.Location = new System.Drawing.Point(0, 86);
            this.groupBox3.Margin = new System.Windows.Forms.Padding(4);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Padding = new System.Windows.Forms.Padding(4);
            this.groupBox3.Size = new System.Drawing.Size(1039, 616);
            this.groupBox3.TabIndex = 19;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "器械经营许可范围信息";
            // 
            // splitContainer1
            // 
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.Location = new System.Drawing.Point(4, 25);
            this.splitContainer1.Name = "splitContainer1";
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.groupBox1);
            this.splitContainer1.Panel1.Controls.Add(this.panel1);
            this.splitContainer1.Panel1.Controls.Add(this.label14);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.groupBox6);
            this.splitContainer1.Panel2.Controls.Add(this.groupBox7);
            this.splitContainer1.Size = new System.Drawing.Size(1031, 587);
            this.splitContainer1.SplitterDistance = 353;
            this.splitContainer1.TabIndex = 1;
            // 
            // label14
            // 
            this.label14.Location = new System.Drawing.Point(-92, 178);
            this.label14.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(80, 46);
            this.label14.TabIndex = 16;
            this.label14.Text = "器械分类代码";
            // 
            // groupBox6
            // 
            this.groupBox6.Controls.Add(this.richTextBox1);
            this.groupBox6.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox6.Location = new System.Drawing.Point(0, 0);
            this.groupBox6.Name = "groupBox6";
            this.groupBox6.Size = new System.Drawing.Size(674, 447);
            this.groupBox6.TabIndex = 28;
            this.groupBox6.TabStop = false;
            // 
            // groupBox7
            // 
            this.groupBox7.Controls.Add(this.textBoxChangeRecord);
            this.groupBox7.Controls.Add(this.label12);
            this.groupBox7.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.groupBox7.Location = new System.Drawing.Point(0, 447);
            this.groupBox7.Name = "groupBox7";
            this.groupBox7.Size = new System.Drawing.Size(674, 140);
            this.groupBox7.TabIndex = 27;
            this.groupBox7.TabStop = false;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(7, 31);
            this.label12.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(80, 18);
            this.label12.TabIndex = 29;
            this.label12.Text = "变更记录";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.textBox2);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.textBox1);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(353, 78);
            this.panel1.TabIndex = 20;
            // 
            // textBox1
            // 
            this.bugsBoxFocusColorProvider2.SetFocusBackColor(this.textBox1, System.Drawing.Color.LightSkyBlue);
            this.bugsBoxFocusColorProvider1.SetFocusBackColor(this.textBox1, System.Drawing.Color.LightSkyBlue);
            this.bugsBoxFocusColorProvider1.SetFocusForeColor(this.textBox1, System.Drawing.Color.White);
            this.bugsBoxFocusColorProvider2.SetFocusForeColor(this.textBox1, System.Drawing.Color.White);
            this.textBox1.Location = new System.Drawing.Point(214, 10);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(126, 28);
            this.textBox1.TabIndex = 23;
            this.textBox1.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(21, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(188, 18);
            this.label1.TabIndex = 22;
            this.label1.Text = "按代码（旧版）查找：";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.treeView1);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupBox1.Location = new System.Drawing.Point(0, 78);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(353, 509);
            this.groupBox1.TabIndex = 21;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "分类树";
            // 
            // treeView1
            // 
            this.treeView1.CheckBoxes = true;
            this.treeView1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.treeView1.Location = new System.Drawing.Point(3, 24);
            this.treeView1.Name = "treeView1";
            this.treeView1.Size = new System.Drawing.Size(347, 482);
            this.treeView1.TabIndex = 0;
            this.treeView1.AfterCheck += new System.Windows.Forms.TreeViewEventHandler(this.treeView1_AfterCheck);
            this.treeView1.NodeMouseClick += new System.Windows.Forms.TreeNodeMouseClickEventHandler(this.treeView1_NodeMouseClick);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(21, 49);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(188, 18);
            this.label2.TabIndex = 22;
            this.label2.Text = "按代码（新版）查找：";
            // 
            // textBox2
            // 
            this.bugsBoxFocusColorProvider2.SetFocusBackColor(this.textBox2, System.Drawing.Color.LightSkyBlue);
            this.bugsBoxFocusColorProvider1.SetFocusBackColor(this.textBox2, System.Drawing.Color.LightSkyBlue);
            this.bugsBoxFocusColorProvider1.SetFocusForeColor(this.textBox2, System.Drawing.Color.White);
            this.bugsBoxFocusColorProvider2.SetFocusForeColor(this.textBox2, System.Drawing.Color.White);
            this.textBox2.Location = new System.Drawing.Point(214, 44);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(126, 28);
            this.textBox2.TabIndex = 23;
            this.textBox2.TextChanged += new System.EventHandler(this.textBox2_TextChanged);
            // 
            // FormGSPLicense
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 18F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1039, 764);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.groupBox5);
            this.Margin = new System.Windows.Forms.Padding(6);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FormGSPLicense";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "分类代码和目录控制中心";
            this.Load += new System.EventHandler(this.FormGSPLicense_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gSPLicenseBindingSource)).EndInit();
            this.groupBox5.ResumeLayout(false);
            this.groupBox5.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            this.groupBox6.ResumeLayout(false);
            this.groupBox7.ResumeLayout(false);
            this.groupBox7.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private Windows.Forms.BugsBoxFocusColorProvider bugsBoxFocusColorProvider1;
        private CustomValidatorsLibrary.RequiredFieldValidator requiredFieldValidator4;
        private CustomValidatorsLibrary.RequiredFieldValidator requiredFieldValidator3;
        private CustomValidatorsLibrary.RequiredFieldValidator requiredFieldValidator2;
        private CustomValidatorsLibrary.RequiredFieldValidator requiredFieldValidator1;
        private CustomValidatorsLibrary.RequiredFieldValidator requiredFieldValidator5;
        private Windows.Forms.BugsBoxFocusColorProvider bugsBoxFocusColorProvider2;
        private System.Windows.Forms.BindingSource gSPLicenseBindingSource;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.TextBox textBoxStatus;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Button buttonSave;
        private System.Windows.Forms.Button buttonClose;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.TextBox textBoxQualityHeader;
        private System.Windows.Forms.TextBox textBoxHeader;
        private System.Windows.Forms.TextBox textBoxLegalPerson;
        private System.Windows.Forms.ComboBox comboBoxBusinessTypeId;
        private System.Windows.Forms.TextBox textBoxWarehouseAddress;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.GroupBox groupBox6;
        private System.Windows.Forms.GroupBox groupBox7;
        private System.Windows.Forms.TextBox textBoxChangeRecord;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.RichTextBox richTextBox1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TreeView treeView1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ToolTip toolTip1;
    }
}