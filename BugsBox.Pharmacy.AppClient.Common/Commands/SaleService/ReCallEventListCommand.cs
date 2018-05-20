using BugsBox.Application.Core;
using BugsBox.Pharmacy.AppClient.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace BugsBox.Pharmacy.Commands.SaleService
{
    [DataContract(Namespace = "http://www.dqinfo.net/2017/dqinfo")]
    public class ReCallEventListCommand : ServerCommand
    {
        [DataMember]
        public PagerInfo Pager { get; set; }

        [DataMember]
        public DateTime BeginDate { get; set; }
        [DataMember]
        public DateTime EndDate { get; set; }
    }
}
