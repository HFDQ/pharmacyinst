using BugsBox.Application.Core;
using BugsBox.Pharmacy.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;

namespace BugsBox.Pharmacy.BusinessHandlers
{
    partial class AdverseDrugEventBusinessHandler
    {


        public List<AdverseDrugEvent> QueryAdverseDrugEventsByKeyWords(Expression<Func<AdverseDrugEvent, bool>> expression, PagerInfo pager)
        {
            try
            {
                //处理排序
                var query = this.Queryable.Where(expression);//过滤一下 

                pager.RecordCount = query.Count();  //处理总录条数

                query = query.OrderByDescending(d => d.CreateTime);
                var records = query
                     .Skip((pager.Index - 1) * pager.Size)
                     .Take(pager.Size)
                     .ToList();
                return records;
            }
            catch (Exception ex)
            {
                return this.HandleException<List<AdverseDrugEvent>>("查询基础信息失败", ex);
            }
        }



    }
}
