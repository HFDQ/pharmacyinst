using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BugsBox.Pharmacy.Service.Models
{
    public class ProductKeyChangedArg
    {
        public string Message { get; set; }

        public bool IsActive { get; set; }


        public string ExpirationDateStr { get; set; }
    }
}
