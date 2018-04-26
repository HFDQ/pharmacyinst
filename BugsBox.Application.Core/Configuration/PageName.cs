using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace BugsBox.Application.Core.Configuration
{
    public class ReturnOrderPageName
    {
        public string qualityTabPage { get; set; }
        public string generalMangerTabPage { get; set; }
        public string tabPage1 { get; set; }


        public void Init(XmlNode section)
        {
            var installationNode = section.SelectSingleNode("ReturnOrderPageName");
            qualityTabPage = DQConfig.GetString(installationNode, "qualityTabPage");
            generalMangerTabPage = DQConfig.GetString(installationNode, "generalMangerTabPage");
            tabPage1 = DQConfig.GetString(installationNode, "tabPage1");
        }


    }
}
