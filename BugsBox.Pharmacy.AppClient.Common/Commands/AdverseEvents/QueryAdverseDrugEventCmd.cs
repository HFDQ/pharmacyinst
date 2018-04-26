using BugsBox.Application.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace BugsBox.Pharmacy.AppClient.Common.Commands
{
    [DataContract(Namespace = "http://www.dqinfo.net/2017/dqinfo")]
    public class QueryAdverseDrugEventCmd : ServerCommand
    {
        [DataMember]
        public PagerInfo Pager { get; set; }


        [DataMember]
        public string Keyword { get; set; }

    }
}
