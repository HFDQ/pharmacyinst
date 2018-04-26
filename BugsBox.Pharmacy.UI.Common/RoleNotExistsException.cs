using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BugsBox.Pharmacy.UI.Common
{
    public class RoleNotExistsException : Exception
    {
        public RoleNotExistsException(string message)
            : base(message)
        {

        }
    }
}
