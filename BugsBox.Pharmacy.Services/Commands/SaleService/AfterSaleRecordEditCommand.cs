using BugsBox.Application.Core;
using BugsBox.Pharmacy.Models;
using BugsBox.Pharmacy.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace BugsBox.Pharmacy.Commands.SaleService
{
    [DataContract(Namespace = "http://www.dqinfo.net/2017/dqinfo")]
    public class AfterSaleRecordEditCommand : Command
    {
        [DataMember]
        public AfterSaleRecord Record { get; set; }

        public override object Execute()
        {
            using (var db = new Db())
            {
                if (Record.Id == Guid.Empty)
                {
                    db.AfterSaleRecords.Add(Record);
                }
                else
                {
                    var originItem = db.AfterSaleRecords.FirstOrDefault(o => o.Id == Record.Id);

                }
                return db.SaveChanges();
            }
        }
    }
}
