using BugsBox.Application.Core;
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
        public override object Execute()
        {
            throw new NotImplementedException();
        }
    }
}
