using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Xml;

namespace BugsBox.Pharmacy.AppClient.UI.Forms
{
    public partial class FunctionMap : BaseFunctionForm
    {
        public FunctionMap()
        {
            InitializeComponent();

            XmlDocument doc = new XmlDocument();
            doc.Load(System.Configuration.ConfigurationManager.AppSettings["Menu"].ToString());

            List<FuncMapItem> Items = new List<FuncMapItem>();
            foreach (XmlNode node in doc.SelectNodes("/MenusGroup/Menu/Menu"))
            {
                FuncMapItem item = new FuncMapItem();
                Items.Add(item);
                item.Header = NodeTag.Create(node);
                Build(node, item);
            }

            foreach (var item in Items)
            {
                var control = new BugsBox.Pharmacy.AppClient.UserControls.FuncMapItemControl(item);

                flowLayoutPanel1.Controls.Add(control);
            }

            this.SizeChanged += FunctionMap_SizeChanged;
        }

        void FunctionMap_SizeChanged(object sender, EventArgs e)
        {
            foreach (Control control in flowLayoutPanel1.Controls)
            {
                control.Width = this.Width;
            }
        }


        private void Build(XmlNode node, FuncMapItem item)
        {
            var hasPermission = false;

            foreach (XmlNode childNode in node.ChildNodes)
            {
                if (childNode.HasChildNodes)
                {
                    Build(childNode, item);
                }
                else
                {
                    var nodeTag = NodeTag.Create(childNode);
                    if (!string.IsNullOrWhiteSpace(nodeTag.ModuleKey))
                    {
                        hasPermission = PharmacyAuthorizeExtesions.Authorize(this, nodeTag.ModuleKey);
                    }
                    if (hasPermission)
                    {
                        item.Children.Add(nodeTag);
                    }
                }
            }
        }
    }
    public class FuncMapItem
    {
        public FuncMapItem()
        {
            Children = new List<NodeTag>();
        }
        public NodeTag Header { get; set; }

        public List<NodeTag> Children { get; set; }
    }

}
