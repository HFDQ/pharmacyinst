using BugsBox.Pharmacy.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace BugsBox.Pharmacy.AppClient.Common.Commands
{
    [DataContract(Namespace = "http://www.dqinfo.net/2017/dqinfo")]
    public class AddAdverseDrugEventCmd : ServerCommand
    {
        [DataMember]
        public AdverseDrugEvent Event { get; set; }
    }
}
