using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Entity;
using BugsBox.Application.Core;
using BugsBox.Pharmacy.Models;

namespace BugsBox.Pharmacy.BusinessHandlers
{
    partial class GSPLicenseBusinessHandler
    {
        protected override System.Linq.IQueryable<BugsBox.Pharmacy.Models.GSPLicense> IncludeNavigationProperties(System.Linq.IQueryable<BugsBox.Pharmacy.Models.GSPLicense> queryable)
        {
            try
            {
                return base.IncludeNavigationProperties(queryable
               .Include(l => l.GMSPLicenseBusinessScopes)
               );
            }
            catch (Exception ex)
            {
                ex = new BusinessException(string.Format("[{0}]导航属性处理出错", EntityName), ex);
                return HandleException<IQueryable<GSPLicense>>(ex.Message, ex);
            }
        }

        public bool EditGSPLiscence(GSPLicense m)
        {
            try
            {
                var c = this.Get(m.Id);

                foreach (var i in c.GMSPLicenseBusinessScopes)
                {
                    this.BusinessHandlerFactory.GMSPLicenseBusinessScopeBusinessHandler.Delete(i.Id);
                }
                foreach (var i in m.GMSPLicenseBusinessScopes.ToList())
                {
                    GMSPLicenseBusinessScope bs = new GMSPLicenseBusinessScope
                    {
                        GSPLicenseId = i.GSPLicenseId,
                        Id = Guid.NewGuid(),
                        BusinessScopeCodeMemo = i.BusinessScopeCodeMemo,
                        BusinessScopeCode = i.BusinessScopeCode
                    };
                    this.RepositoryProvider.Db.GMSPLicenseBusinessScopes.Add(bs);
                }
                m.GMSPLicenseBusinessScopes = null;
                this.Save(m);
                this.Save();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}
