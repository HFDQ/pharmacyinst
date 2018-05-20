using BugsBox.Application.Core;
using BugsBox.Pharmacy.AppClient.Common;
using BugsBox.Pharmacy.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace BugsBox.Pharmacy.Commands.SaleService
{
    [DataContract(Namespace = "http://www.dqinfo.net/2017/dqinfo")]
    public class ReCallEventEditCommand : ServerCommand
    {
        [DataMember]
        public ReCallEvent Record { get; set; }
    }
}
