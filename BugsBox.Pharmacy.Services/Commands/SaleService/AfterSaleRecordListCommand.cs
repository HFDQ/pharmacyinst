using BugsBox.Application.Core;
using BugsBox.Pharmacy.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace BugsBox.Pharmacy.Commands.SaleService
{
    [DataContract(Namespace = "http://www.dqinfo.net/2017/dqinfo")]
    public class AfterSaleRecordListCommand : Command
    {
        [DataMember]
        public PagerInfo Pager { get; set; }

        [DataMember]
        public DateTime BeginDate { get; set; }
        [DataMember]
        public DateTime EndDate { get; set; }

        public override object Execute()
        {
            using (var db = new Db())
            {
                EndDate = EndDate.AddDays(1);
                BeginDate = BeginDate.AddDays(-1);
                //处理排序
                var query = db.AfterSaleRecords.Where(o => o.ServiceDate >= BeginDate && o.ServiceDate <= EndDate);//过滤一下 

                Pager.RecordCount = query.Count();  //处理总录条数

                query = query.OrderByDescending(d => d.CreateTime);
                var records = query
                     .Skip((Pager.Index - 1) * Pager.Size)
                     .Take(Pager.Size)
                     .ToArray();
                return records;
            }

        }
    }
}
