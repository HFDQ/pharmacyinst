using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace BugsBox.Pharmacy.Models
{
    [DataContract]
    public class AfterSaleRecord : Entity, ILEntity
    {
        [DataMember]
        /// <summary>
        /// 客户名称
        /// </summary>
        /// 
        [DisplayName("客户名称")]
        public string Customer { get; set; }
        [DataMember]
        /// <summary>
        /// 售货服务人员
        /// </summary>
        /// 
        [DisplayName("售货服务人员")]
        public string ServiceStuff { get; set; }
        [DataMember]
        /// <summary>
        /// 产品名称
        /// </summary>
        /// 
        [DisplayName("产品名称")]
        public string DrugName { get; set; }
        [DataMember]
        /// <summary>
        ///产品规格型号
        /// </summary>
        /// 
        [DisplayName("产品规格型号")]
        public string DrugModel { get; set; }
        [DataMember]
        /// <summary>
        /// 服务时间
        /// </summary>
        /// 
        [DisplayName("服务时间")]
        public DateTime ServiceDate { get; set; }
        [DataMember]
        /// <summary>
        /// 服务地址
        /// </summary>
        /// 
        [DisplayName("服务地址")]
        public string ServiceAddress { get; set; }
        [DataMember]
        /// <summary>
        /// 联系人电话
        /// </summary>
        /// 

        [DisplayName("联系人电话")]
        public string ContactPhone { get; set; }
        [DataMember]
        /// <summary>
        /// 收到反馈时间
        /// </summary>
        /// 
        [DisplayName("收到反馈时间")]
        public string GetFeedBackDate { get; set; }

        [DataMember]
        /// <summary>
        /// 用户反馈信息
        /// </summary>
        /// 
        [DisplayName("用户反馈信息")]
        public string FeedBack { get; set; }

        [DisplayName("到达现场时间")]
        /// <summary>
        /// 到达现场时间
        /// </summary>
        public string ArrivalDate { get; set; }
        [DataMember]

        /// <summary>
        /// 现场情况
        /// </summary>
        /// 
        [DisplayName("现场情况")]
        public string SceneInfo { get; set; }
        [DataMember]
        /// <summary>
        /// 现场处理情况
        /// </summary>
        /// 
        [DisplayName("现场处理情况")]
        public string ScenehandleInfo { get; set; }
        [DataMember]
        /// <summary>
        /// 现场处理完毕时间
        /// </summary>
        /// 
        [DisplayName("现场处理完毕时间")]
        public string HandleCompleteDate { get; set; }

        [DataMember]
        /// <summary>
        /// 售货服务评价
        /// </summary>
        /// 
        [DisplayName("售货服务评价")]
        public string Evaluation { get; set; }
        [DataMember]
        /// <summary>
        /// 用户确认
        /// </summary>
        /// 
        [DisplayName("用户确认")]
        public string CustomerConfirm { get; set; }
        [DataMember]
        /// <summary>
        /// 用户确认日期
        /// </summary>
        /// 
        [DisplayName("用户确认日期")]
        public string CustomerConfirmDate { get; set; }
        [DataMember]
        [DisplayName("用户确认电话")]
        /// <summary>
        /// 用户确认电话
        /// </summary>
        public string CustomerConfirmPhone { get; set; }
        [DataMember]
        /// <summary>
        /// 电话回访人
        /// </summary>
        /// 
        [DisplayName("电话回访人")]
        public string ReturnVisitor { get; set; }
        [DataMember]
        /// <summary>
        /// 电话回访日期
        /// </summary>
        /// 
        [DisplayName("电话回访日期")]
        public string ReturnVisitDate { get; set; }
        [DataMember]
        [DisplayName("创建时间")]
        public DateTime CreateTime { get; set; }

        [DataMember]
        public Guid CreateUserId { get; set; }
        [DataMember]
        [DisplayName("更新时间")]
        public DateTime UpdateTime { get; set; }
        [DataMember]
        public Guid UpdateUserId { get; set; }
    }
}
