using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BugsBox.Pharmacy.Models
{
    public class AfterSaleRecord : Entity, ILEntity
    {
        /// <summary>
        /// 客户名称
        /// </summary>
        public string Customer { get; set; }
        /// <summary>
        /// 售货服务人员
        /// </summary>
        public string ServiceStuff { get; set; }

        /// <summary>
        /// 产品名称
        /// </summary>
        public string DrugName { get; set; }

        /// <summary>
        ///产品规格型号
        /// </summary>
        public string DrugModel { get; set; }

        /// <summary>
        /// 服务时间
        /// </summary>
        public DateTime ServiceDate { get; set; }
        /// <summary>
        /// 服务地址
        /// </summary>
        public string ServiceAddress { get; set; }

        /// <summary>
        /// 联系人电话
        /// </summary>
        public string ContactPhone { get; set; }

        /// <summary>
        /// 收到反馈时间
        /// </summary>
        public string GetFeedBackDate { get; set; }


        /// <summary>
        /// 用户反馈信息
        /// </summary>
        public string FeedBack { get; set; }
        /// <summary>
        /// 到达现场时间
        /// </summary>
        public string ArrivalDate { get; set; }


        /// <summary>
        /// 现场情况
        /// </summary>
        public string SceneInfo { get; set; }
        /// <summary>
        /// 现场处理情况
        /// </summary>
        public string ScenehandleInfo { get; set; }

        /// <summary>
        /// 现场处理完毕时间
        /// </summary>
        public string HandleCompleteDate { get; set; }


        /// <summary>
        /// 售货服务评价
        /// </summary>
        public string Evaluation { get; set; }

        /// <summary>
        /// 用户确认
        /// </summary>
        public string CustomerConfirm { get; set; }

        /// <summary>
        /// 用户确认日期
        /// </summary>
        public string CustomerConfirmDate { get; set; }

        /// <summary>
        /// 用户确认电话
        /// </summary>
        public string CustomerConfirmPhone { get; set; }

        /// <summary>
        /// 电话回访人
        /// </summary>
        public string ReturnVisitor { get; set; }
        /// <summary>
        /// 电话回访日期
        /// </summary>
        public string ReturnVisitDate  { get; set; }


        public DateTime CreateTime { get; set; }
        public Guid CreateUserId { get; set; }
        public DateTime UpdateTime { get; set; }
        public Guid UpdateUserId { get; set; }
    }
}
