using BugsBox.Application.Core;
using BugsBox.Pharmacy.Commands;
using BugsBox.Pharmacy.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace BugsBox.Pharmacy.Services
{
    [DataContract(Namespace = "http://www.dqinfo.net/2017/dqinfo")]
    public class AddAdverseDrugEventCmd : BaseCommand
    {
        [DataMember]
        public AdverseDrugEvent Event { get; set; }
        public override object Execute()
        {
            try
            {
                base.HandlerFactory.AdverseDrugEventBusinessHandler.Add(Event);
                base.HandlerFactory.AdverseDrugEventBusinessHandler.Save();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
