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
    public class ReCallCaseEditCommand : Command
    {
        [DataMember]
        public ReCallCase Record { get; set; }
        public override object Execute()
        {
            using (var db = new Db())
            {
                var originItem = db.ReCallCases.FirstOrDefault(o => o.Id == Record.Id);
                if (originItem == null)
                {
                    Record.CreateTime = DateTime.Now;
                    Record.UpdateTime = DateTime.Now;

                    db.ReCallCases.Add(Record);
                }
                else
                {

                    originItem.DrugName = Record.DrugName;
                    originItem.LisenceNum = Record.LisenceNum;
                    originItem.Manufacturing = Record.Manufacturing;
                    originItem.PrincipalCompanyInfo = Record.PrincipalCompanyInfo;
                    originItem.RecallJobInfo = Record.RecallJobInfo;
                    originItem.DutyReceiverShouldNotificationCount = Record.DutyReceiverShouldNotificationCount;
                    originItem.DutyReceiverHaveNotificationCount = Record.DutyReceiverHaveNotificationCount;
                    originItem.DutyReceiverNotificationDate = Record.DutyReceiverNotificationDate;
                    originItem.DutyReceiverNotificationMethod = Record.DutyReceiverNotificationMethod;
                    originItem.OtherReceiverShouldNotificationCount = Record.OtherReceiverShouldNotificationCount;
                    originItem.OtherReceiverHaveNotificationCount = Record.OtherReceiverHaveNotificationCount;
                    originItem.OtherReceiverNotificationDate = Record.OtherReceiverNotificationDate;
                    originItem.OtherReceiverNotificationMethod = Record.OtherReceiverNotificationMethod;
                    originItem.ShouldRecallCount = Record.ShouldRecallCount;

                    originItem.HavedRecallCount = Record.HavedRecallCount;
                    originItem.ValidityCheckInfo = Record.ValidityCheckInfo;
                    originItem.RecallProductHandle = Record.RecallProductHandle;
                    originItem.FullRecallTimeEstimation = Record.FullRecallTimeEstimation;

                    originItem.UpdateTime = DateTime.Now;
                }
                return db.SaveChanges();
            }
        }
    }
}
