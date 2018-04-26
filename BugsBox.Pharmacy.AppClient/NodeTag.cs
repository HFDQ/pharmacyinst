using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace BugsBox.Pharmacy.AppClient
{
    /// <summary>
    /// 节点上绑定的数据
    /// </summary>
    public class NodeTag
    {
        public string id { get; set; }
        public string Title { get; set; }
        public string Name { get; set; }
        public string Params { get; set; }
        public string DockState { get; set; }
        public string ModuleKey { get; set; }
        public string FuncationCatogory { get; set; }
        public bool HasPermission { get; set; }
        public static NodeTag Create(XmlNode node)
        {
            var funcationCatogory = node.Attributes["FuncationCatogory"] == null ? "" : node.Attributes["FuncationCatogory"].Value;

            return new NodeTag()
            {
                id = node.Attributes["id"].Value,
                Name = node.Attributes["Name"].Value,
                Params = node.Attributes["Params"].Value,
                DockState = node.Attributes["DockState"].Value,
                Title = node.Attributes["Title"].Value,
                ModuleKey = node.Attributes["ModuleKey"].Value,
                FuncationCatogory = funcationCatogory
            };
        }
    }


}
