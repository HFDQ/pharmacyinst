using BugsBox.Application.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BugsBox.Pharmacy.Business.Models
{
    public class CmdResult
    {
        public PagerInfo Page { get; set; }

        public object Data { get; set; }


        public bool IsSuccessed { get; set; }

    }
}
