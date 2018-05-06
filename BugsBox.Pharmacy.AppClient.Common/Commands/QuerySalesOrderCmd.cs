using BugsBox.Application.Core;
using BugsBox.Application.Core.CF;
using BugsBox.Pharmacy.AppClient.Common;
using BugsBox.Pharmacy.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace BugsBox.Pharmacy.Commands
{
    [DataContract(Namespace = "http://www.dqinfo.net/2017/dqinfo")]
    public class QuerySalesOrderCmdCmd : ServerCommand
    {
        [DataMember]
        public DateTime BeginDate { get; set; }
        [DataMember]
        public DateTime EndDate { get; set; }
    }
}
