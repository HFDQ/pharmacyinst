using BugsBox.Application.Core;
using BugsBox.Pharmacy.BusinessHandlers;
using BugsBox.Pharmacy.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace BugsBox.Pharmacy.Commands
{
    [DataContract(Namespace = "http://www.dqinfo.net/2017/dqinfo")]
    public class BaseCommand : Command
    {

        BusinessHandlerFactory handlerFactory;
        public BusinessHandlerFactory HandlerFactory
        {
            get
            {
                if (handlerFactory == null)
                {
                    var conninfo = ConnectedInfoProvider.GetConnectedInfoProvider(OperationContext.Current.SessionId);
                    var db = new Db();
                    handlerFactory = new BusinessHandlerFactory(db, conninfo);
                }
                return handlerFactory;
            }
        }

        public override object Execute()
        {
            throw new NotImplementedException();
        }
    }
}
