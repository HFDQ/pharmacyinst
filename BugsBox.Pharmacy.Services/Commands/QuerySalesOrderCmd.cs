using BugsBox.Application.Core;
using BugsBox.Application.Core.CF;
using BugsBox.Pharmacy.BusinessHandlers;
using BugsBox.Pharmacy.Models;
using BugsBox.Pharmacy.Repository;
using BugsBox.Pharmacy.Service.Models.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace BugsBox.Pharmacy.Commands
{
    [DataContract(Namespace = "http://www.dqinfo.net/2017/dqinfo")]
    public class QuerySalesOrderCmdCmd : Command
    {

        [DataMember]
        public DateTime BeginDate { get; set; }
        [DataMember]
        public DateTime EndDate { get; set; }
        public override object Execute()
        {
            using (var db = new Db())
            {
                var q = from saleorder in db.SalesOrders
                        join d in db.SalesOrderDetails on saleorder.Id equals d.SalesOrderID
                        join drugRecord in db.DrugInventoryRecords on d.DrugInventoryRecordID equals drugRecord.Id
                        join drug in db.DrugInfos on drugRecord.DrugInfoId equals drug.Id
                        join p in db.PurchaseUnits on saleorder.PurchaseUnitId equals p.Id
                        join person in db.PurchaseUnitBuyers on saleorder.PurchaseUnitManID equals person.Id
                        select new SaleOrderDetailItem
                        {
                            PurchaseDate = saleorder.CreateTime,
                            PurchaseUnitName = p.Name,
                            DetailedAddress = p.DetailedAddress,
                            PersonName = person.Name,
                            Tel = person.Tel,
                            ProductGeneralName = drug.ProductGeneralName,
                            DictionarySpecificationCode = drug.DictionarySpecificationCode,
                            FactoryName = drug.FactoryName,
                            BatchNumber = drugRecord.BatchNumber,
                            OutValidDate = drugRecord.OutValidDate,
                            Amount = d.Amount,
                            PurchasePrice = d.PurchasePrice,
                            TotalMoney = d.Amount * d.PurchasePrice
                        };
            }
            return "";
        }
    }
}
