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
    public class ReCallEventEditCommand : Command
    {
        [DataMember]
        public ReCallEvent Record { get; set; }
        public override object Execute()
        {
            using (var db = new Db())
            {
                var originItem = db.ReCallEvents.FirstOrDefault(o => o.Id == Record.Id);
                if (originItem == null)
                {
                    Record.CreateTime = DateTime.Now;
                    Record.UpdateTime = DateTime.Now;
                    db.ReCallEvents.Add(Record);
                }
                else
                {
                    originItem.DrugName = Record.DrugName;
                    originItem.LisenceNum = Record.LisenceNum;
                    originItem.Manufacturing = Record.Manufacturing;
                    originItem.PrincipalCompanyInfo = Record.PrincipalCompanyInfo;
                    originItem.RecallJobInfo = Record.RecallJobInfo;
                    originItem.ProductScope = Record.ProductScope;
                    originItem.AreaInvolved = Record.AreaInvolved;
                    originItem.ProductInvolved = Record.ProductInvolved;
                    originItem.ProductMakeCountInvolved = Record.ProductMakeCountInvolved;
                    originItem.ProductSaleCountInvolved = Record.ProductSaleCountInvolved;
                    originItem.IdentifyInfo = Record.IdentifyInfo;
                    originItem.RecallReason = Record.RecallReason;
                    originItem.CorrectiveInfo = Record.CorrectiveInfo;
                    originItem.ReportUnit = Record.ReportUnit;

                    originItem.Reporter = Record.Reporter;
                    originItem.Principal = Record.Principal;
                    originItem.ReportDate = Record.ReportDate;

                    originItem.UpdateTime = DateTime.Now;
                }
                return db.SaveChanges();
            }
        }
    }
}
