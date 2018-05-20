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
                    Record.CreateTime = DateTime.Now;
                    db.AfterSaleRecords.Add(Record);
                }
                else
                {
                    var originItem = db.AfterSaleRecords.FirstOrDefault(o => o.Id == Record.Id);
                    originItem.Customer = Record.Customer;
                    originItem.ServiceStuff = Record.ServiceStuff;
                    originItem.DrugName = Record.DrugName;
                    originItem.DrugModel = Record.DrugModel;
                    originItem.ServiceDate = Record.ServiceDate;
                    originItem.ServiceAddress = Record.ServiceAddress;
                    originItem.ContactPhone = Record.ContactPhone;
                    originItem.GetFeedBackDate = Record.GetFeedBackDate;
                    originItem.FeedBack = Record.FeedBack;
                    originItem.ArrivalDate = Record.ArrivalDate;
                    originItem.SceneInfo = Record.SceneInfo;
                    originItem.ScenehandleInfo = Record.ScenehandleInfo;
                    originItem.HandleCompleteDate = Record.HandleCompleteDate;
                    originItem.Evaluation = Record.Evaluation;
                    originItem.CustomerConfirm = Record.CustomerConfirm;
                    originItem.CustomerConfirmDate = Record.CustomerConfirmDate;
                    originItem.CustomerConfirmPhone = Record.CustomerConfirmPhone;
                    originItem.ReturnVisitDate = Record.ReturnVisitDate;
                    originItem.ReturnVisitor = Record.ReturnVisitor;
                    originItem.UpdateTime = DateTime.Now;
                    originItem.UpdateUserId = Record.UpdateUserId;
                }
                return db.SaveChanges();
            }
        }
    }
}
