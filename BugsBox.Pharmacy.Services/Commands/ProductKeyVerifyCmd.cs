using BugsBox.Application.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace BugsBox.Pharmacy.Services
{
    [DataContract(Namespace = "http://www.dqinfo.net/2017/dqinfo")]
    public class ProductKeyVerifyCmd : Command
    {
        public override object Execute()
        {
            return ProductKeyVerifyService.Instance.ProductKeyAvailable;
        }
    }
}
