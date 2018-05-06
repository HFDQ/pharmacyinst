using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace BugsBox.Pharmacy.Service.Models.ViewModel
{
    [DataContract]
    public class SaleOrderDetailItem
    {
        public DateTime PurchaseDate { get; set; }
        public string PurchaseUnitName { get; set; }
        public string DetailedAddress { get; set; }
        public string PersonName { get; set; }
        public string Tel { get; set; }
        public string ProductGeneralName { get; set; }
        public string DictionarySpecificationCode { get; set; }
        public string FactoryName { get; set; }
        public string BatchNumber { get; set; }

        public DateTime OutValidDate { get; set; }

        public decimal Amount { get; set; }
        public decimal PurchasePrice { get; set; }
        public decimal TotalMoney { get; set; }

    }
}
