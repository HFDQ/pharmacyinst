﻿namespace BugsBox.Pharmacy.ServiceHost
{
    partial class mainForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(mainForm));
            this.menuStripSystem = new System.Windows.Forms.MenuStrip();
            this.ToolStripMenuItemSystem = new System.Windows.Forms.ToolStripMenuItem();
            this.ToolStripMenuItemExit = new System.Windows.Forms.ToolStripMenuItem();
            this.升级数据库版本ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ToolStripMenuItemHelper = new System.Windows.Forms.ToolStripMenuItem();
            this.ToolStripMenuItemViewHelper = new System.Windows.Forms.ToolStripMenuItem();
            this.ToolStripMenuItemUpdate = new System.Windows.Forms.ToolStripMenuItem();
            this.ToolStripMenuItemAbout = new System.Windows.Forms.ToolStripMenuItem();
            this.注册产品ToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.toolStripStatusLabelVersion = new System.Windows.Forms.ToolStripStatusLabel();
            this.notifyIcon1 = new System.Windows.Forms.NotifyIcon(this.components);
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.toolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem2 = new System.Windows.Forms.ToolStripMenuItem();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.serviceControl2 = new BugsBox.Pharmacy.ServiceHost.UserControls.ServiceControl();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.runTimeLogsUserControl1 = new BugsBox.Pharmacy.ServiceHost.UserControls.RunTimeLogsUserControl();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.systemConfigForm1 = new BugsBox.Pharmacy.ServiceHost.Forms.SystemConfigForm();
            this.skinEngine1 = new Sunisoft.IrisSkin.SkinEngine();
            this.menuStripSystem.SuspendLayout();
            this.statusStrip1.SuspendLayout();
            this.contextMenuStrip1.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.tabPage3.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStripSystem
            // 
            this.menuStripSystem.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.menuStripSystem.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ToolStripMenuItemSystem,
            this.ToolStripMenuItemHelper});
            this.menuStripSystem.Location = new System.Drawing.Point(5, 5);
            this.menuStripSystem.Name = "menuStripSystem";
            this.menuStripSystem.Size = new System.Drawing.Size(782, 25);
            this.menuStripSystem.TabIndex = 2;
            this.menuStripSystem.Text = "menuStrip1";
            // 
            // ToolStripMenuItemSystem
            // 
            this.ToolStripMenuItemSystem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ToolStripMenuItemExit,
            this.升级数据库版本ToolStripMenuItem});
            this.ToolStripMenuItemSystem.Name = "ToolStripMenuItemSystem";
            this.ToolStripMenuItemSystem.Size = new System.Drawing.Size(59, 21);
            this.ToolStripMenuItemSystem.Text = "系统(&S)";
            // 
            // ToolStripMenuItemExit
            // 
            this.ToolStripMenuItemExit.Name = "ToolStripMenuItemExit";
            this.ToolStripMenuItemExit.Size = new System.Drawing.Size(160, 22);
            this.ToolStripMenuItemExit.Text = "退出(&Q)";
            this.ToolStripMenuItemExit.Click += new System.EventHandler(this.ToolStripMenuItemExit_Click);
            // 
            // 升级数据库版本ToolStripMenuItem
            // 
            this.升级数据库版本ToolStripMenuItem.Name = "升级数据库版本ToolStripMenuItem";
            this.升级数据库版本ToolStripMenuItem.Size = new System.Drawing.Size(160, 22);
            this.升级数据库版本ToolStripMenuItem.Text = "升级数据库版本";
            this.升级数据库版本ToolStripMenuItem.Click += new System.EventHandler(this.升级数据库版本ToolStripMenuItem_Click);
            // 
            // ToolStripMenuItemHelper
            // 
            this.ToolStripMenuItemHelper.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ToolStripMenuItemViewHelper,
            this.ToolStripMenuItemUpdate,
            this.ToolStripMenuItemAbout,
            this.注册产品ToolStripMenuItem});
            this.ToolStripMenuItemHelper.Name = "ToolStripMenuItemHelper";
            this.ToolStripMenuItemHelper.Size = new System.Drawing.Size(61, 21);
            this.ToolStripMenuItemHelper.Text = "帮助(&H)";
            // 
            // ToolStripMenuItemViewHelper
            // 
            this.ToolStripMenuItemViewHelper.Name = "ToolStripMenuItemViewHelper";
            this.ToolStripMenuItemViewHelper.Size = new System.Drawing.Size(156, 22);
            this.ToolStripMenuItemViewHelper.Text = "查看帮助（&V）";
            // 
            // ToolStripMenuItemUpdate
            // 
            this.ToolStripMenuItemUpdate.Name = "ToolStripMenuItemUpdate";
            this.ToolStripMenuItemUpdate.Size = new System.Drawing.Size(156, 22);
            this.ToolStripMenuItemUpdate.Text = "在线升级(&U)";
            // 
            // ToolStripMenuItemAbout
            // 
            this.ToolStripMenuItemAbout.Name = "ToolStripMenuItemAbout";
            this.ToolStripMenuItemAbout.Size = new System.Drawing.Size(156, 22);
            this.ToolStripMenuItemAbout.Text = "关于(&A)";
            // 
            // 注册产品ToolStripMenuItem
            // 
            this.注册产品ToolStripMenuItem.Name = "注册产品ToolStripMenuItem";
            this.注册产品ToolStripMenuItem.Size = new System.Drawing.Size(156, 22);
            this.注册产品ToolStripMenuItem.Text = "注册产品";
            this.注册产品ToolStripMenuItem.Click += new System.EventHandler(this.注册产品ToolStripMenuItem_Click);
            // 
            // statusStrip1
            // 
            this.statusStrip1.AutoSize = false;
            this.statusStrip1.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabelVersion});
            this.statusStrip1.Location = new System.Drawing.Point(5, 546);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.statusStrip1.Size = new System.Drawing.Size(782, 22);
            this.statusStrip1.TabIndex = 6;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // toolStripStatusLabelVersion
            // 
            this.toolStripStatusLabelVersion.Name = "toolStripStatusLabelVersion";
            this.toolStripStatusLabelVersion.Size = new System.Drawing.Size(52, 17);
            this.toolStripStatusLabelVersion.Text = "Version";
            // 
            // notifyIcon1
            // 
            this.notifyIcon1.ContextMenuStrip = this.contextMenuStrip1;
            this.notifyIcon1.Icon = ((System.Drawing.Icon)(resources.GetObject("notifyIcon1.Icon")));
            this.notifyIcon1.Text = "notifyIcon1";
            this.notifyIcon1.DoubleClick += new System.EventHandler(this.notifyIcon1_DoubleClick);
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripMenuItem1,
            this.toolStripMenuItem2});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(101, 48);
            // 
            // toolStripMenuItem1
            // 
            this.toolStripMenuItem1.Name = "toolStripMenuItem1";
            this.toolStripMenuItem1.Size = new System.Drawing.Size(100, 22);
            this.toolStripMenuItem1.Text = "显示";
            this.toolStripMenuItem1.Click += new System.EventHandler(this.toolStripMenuItem1_Click);
            // 
            // toolStripMenuItem2
            // 
            this.toolStripMenuItem2.Name = "toolStripMenuItem2";
            this.toolStripMenuItem2.Size = new System.Drawing.Size(100, 22);
            this.toolStripMenuItem2.Text = "关闭";
            this.toolStripMenuItem2.Click += new System.EventHandler(this.toolStripMenuItem2_Click);
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage3);
            this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl1.Location = new System.Drawing.Point(5, 30);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(782, 516);
            this.tabControl1.TabIndex = 7;
            // 
            // tabPage1
            // 
            this.tabPage1.BackColor = System.Drawing.SystemColors.Control;
            this.tabPage1.Controls.Add(this.groupBox2);
            this.tabPage1.Controls.Add(this.groupBox1);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(5);
            this.tabPage1.Size = new System.Drawing.Size(774, 490);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "首页";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.serviceControl2);
            this.groupBox2.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupBox2.Location = new System.Drawing.Point(5, 5);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(764, 69);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "控制";
            // 
            // serviceControl2
            // 
            this.serviceControl2.Location = new System.Drawing.Point(20, 18);
            this.serviceControl2.Margin = new System.Windows.Forms.Padding(4);
            this.serviceControl2.Name = "serviceControl2";
            this.serviceControl2.Size = new System.Drawing.Size(160, 45);
            this.serviceControl2.TabIndex = 0;
            this.serviceControl2.Load += new System.EventHandler(this.serviceControl2_Load);
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox1.Controls.Add(this.runTimeLogsUserControl1);
            this.groupBox1.Location = new System.Drawing.Point(5, 80);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(5);
            this.groupBox1.Size = new System.Drawing.Size(764, 401);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "日志";
            // 
            // runTimeLogsUserControl1
            // 
            this.runTimeLogsUserControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.runTimeLogsUserControl1.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.runTimeLogsUserControl1.Location = new System.Drawing.Point(5, 19);
            this.runTimeLogsUserControl1.Margin = new System.Windows.Forms.Padding(4);
            this.runTimeLogsUserControl1.Name = "runTimeLogsUserControl1";
            this.runTimeLogsUserControl1.Size = new System.Drawing.Size(754, 377);
            this.runTimeLogsUserControl1.TabIndex = 0;
            // 
            // tabPage3
            // 
            this.tabPage3.BackColor = System.Drawing.SystemColors.Control;
            this.tabPage3.Controls.Add(this.systemConfigForm1);
            this.tabPage3.Location = new System.Drawing.Point(4, 22);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Padding = new System.Windows.Forms.Padding(5);
            this.tabPage3.Size = new System.Drawing.Size(774, 490);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "配置";
            // 
            // systemConfigForm1
            // 
            this.systemConfigForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.systemConfigForm1.Font = new System.Drawing.Font("宋体", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.systemConfigForm1.Location = new System.Drawing.Point(5, 5);
            this.systemConfigForm1.Margin = new System.Windows.Forms.Padding(4);
            this.systemConfigForm1.Name = "systemConfigForm1";
            this.systemConfigForm1.Size = new System.Drawing.Size(764, 480);
            this.systemConfigForm1.TabIndex = 0;
            // 
            // skinEngine1
            // 
            this.skinEngine1.@__DrawButtonFocusRectangle = true;
            this.skinEngine1.DisabledButtonTextColor = System.Drawing.Color.Gray;
            this.skinEngine1.DisabledMenuFontColor = System.Drawing.SystemColors.GrayText;
            this.skinEngine1.InactiveCaptionColor = System.Drawing.SystemColors.InactiveCaptionText;
            this.skinEngine1.SerialNumber = "";
            this.skinEngine1.SkinFile = null;
            // 
            // mainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(792, 573);
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.statusStrip1);
            this.Controls.Add(this.menuStripSystem);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuStripSystem;
            this.MinimumSize = new System.Drawing.Size(798, 594);
            this.Name = "mainForm";
            this.Padding = new System.Windows.Forms.Padding(5);
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "医药进销存系统--服务端";
            this.Activated += new System.EventHandler(this.mainForm_Activated);
            this.Deactivate += new System.EventHandler(this.mainForm_Deactivate);
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.mainForm_FormClosed);
            this.menuStripSystem.ResumeLayout(false);
            this.menuStripSystem.PerformLayout();
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            this.contextMenuStrip1.ResumeLayout(false);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.tabPage3.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStripSystem;
        private System.Windows.Forms.ToolStripMenuItem ToolStripMenuItemSystem;
        private System.Windows.Forms.ToolStripMenuItem ToolStripMenuItemExit;
        private System.Windows.Forms.ToolStripMenuItem ToolStripMenuItemHelper;
        private System.Windows.Forms.ToolStripMenuItem ToolStripMenuItemViewHelper;
        private System.Windows.Forms.ToolStripMenuItem ToolStripMenuItemUpdate;
        private System.Windows.Forms.ToolStripMenuItem ToolStripMenuItemAbout;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabelVersion;
        private System.Windows.Forms.NotifyIcon notifyIcon1;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private UserControls.ServiceControl serviceControl1;
        private UserControls.RunTimeLogsUserControl runTimeLogsUserControl1;
        private Forms.SystemConfigForm systemConfigForm1;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem2;
        private UserControls.ServiceControl serviceControl2;
        private Sunisoft.IrisSkin.SkinEngine skinEngine1;
        private System.Windows.Forms.ToolStripMenuItem 升级数据库版本ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem 注册产品ToolStripMenuItem;
    }
}