using BugsBox.Application.Core;
using BugsBox.Pharmacy.BusinessHandlers;
using BugsBox.Pharmacy.Commands;
using BugsBox.Pharmacy.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace BugsBox.Pharmacy.Services
{
    [DataContract(Namespace = "http://www.dqinfo.net/2017/dqinfo")]
    public class QueryAdverseDrugEventCmd : BaseCommand
    {
        [DataMember]
        public PagerInfo Pager { get; set; }

        [DataMember]
        public string Keyword { get; set; }

        [DataMember]
        public DateTime BeginDate { get; set; }
        [DataMember]
        public DateTime EndDate { get; set; }

        public override object Execute()
        {
            return base.HandlerFactory.AdverseDrugEventBusinessHandler.QueryAdverseDrugEventsByKeyWords((o) => o.EventTitle.Contains(Keyword) && o.CreateTime >= BeginDate && o.CreateTime <= EndDate, Pager).ToArray();
        }
    }
}
