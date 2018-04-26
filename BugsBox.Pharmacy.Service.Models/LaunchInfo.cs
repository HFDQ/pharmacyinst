using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BugsBox.Pharmacy.Service.Models
{
    public class LaunchInfo
    {
        public string Name { get; set; }
        public string CPUSerialNumber { get; set; }
        public string ComputerName { get; set; }
        public string MACAddress { get; set; }
        public string SystemType { get; set; }

        public DateTime ExpirationDate { get; set; }

        public string EncryptedText { get; set; }


        public string ProductKey { get; set; }
    }
}
