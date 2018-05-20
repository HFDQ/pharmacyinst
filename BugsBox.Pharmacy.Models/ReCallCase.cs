using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace BugsBox.Pharmacy.Models
{
    [DataContract]
    public class ReCallCase : Entity, ILEntity
    {
        [DataMember]
        [DisplayName("产品名称")]
        /// <summary>
        /// 产品名称
        /// </summary>
        public string DrugName { get; set; }
        [DisplayName("备案凭证号")]
        [DataMember]
        /// <summary>
        /// 注册证号（备案凭证号）
        /// </summary>
        public string LisenceNum { get; set; }
        [DisplayName("生产企业")]
        [DataMember]
        /// <summary>
        /// 生产企业
        /// </summary>
        public string Manufacturing { get; set; }
        [DisplayName("中国境内负责单位以及联系人")]
        [DataMember]
        /// <summary>
        /// 中国境内负责单位以及联系人
        /// </summary>
        public string PrincipalCompanyInfo { get; set; }
        [DisplayName("召回工作联系人以及联系方式")]
        [DataMember]
        /// <summary>
        /// 召回工作联系人以及联系方式
        /// </summary>
        public string RecallJobInfo { get; set; }
        [DisplayName("应通知人数")]
        [DataMember]
        /// <summary>
        /// 承担召回责任的收货人  应通知人数
        /// </summary>
        public int DutyReceiverShouldNotificationCount { get; set; }
        [DisplayName("已通知人数")]
        [DataMember]
        /// <summary>
        /// 承担召回责任的收货人  已通知人数
        /// </summary>
        public int DutyReceiverHaveNotificationCount { get; set; }
        [DisplayName("通知时间")]
        [DataMember]
        /// <summary>
        /// 承担召回责任的收货人  通知时间
        /// </summary>
        public DateTime DutyReceiverNotificationDate { get; set; }
        [DisplayName("通知方式")]
        [DataMember]
        /// <summary>
        /// 承担召回责任的收货人  通知方式
        /// </summary>
        public string DutyReceiverNotificationMethod { get; set; }
        [DisplayName("应通知人数")]
        [DataMember]


        /// <summary>
        /// 其他收货人  应通知人数
        /// </summary>
        public int OtherReceiverShouldNotificationCount { get; set; }
        [DisplayName("已通知人数")]
        [DataMember]
        /// <summary>
        /// 其他收货人  已通知人数
        /// </summary>
        public int OtherReceiverHaveNotificationCount { get; set; }
        [DisplayName("通知时间")]
        [DataMember]
        /// <summary>
        /// 其他收货人  通知时间
        /// </summary>
        public DateTime OtherReceiverNotificationDate { get; set; }
        [DisplayName("通知方式")]
        [DataMember]
        /// <summary>
        /// 其他收货人  通知方式
        /// </summary>
        public string OtherReceiverNotificationMethod { get; set; }
        [DisplayName("应召回数量")]
        [DataMember]
        /// <summary>
        /// 应召回数量
        /// </summary>
        public int ShouldRecallCount { get; set; }
        [DisplayName("已召回数量")]
        [DataMember]
        /// <summary>
        /// 已召回数量
        /// </summary>
        public int HavedRecallCount { get; set; }
        [DisplayName("有效性检查情况")]
        [DataMember]
        /// <summary>
        /// 有效性检查情况
        /// </summary>
        public string ValidityCheckInfo { get; set; }
        [DisplayName("召回产品处理")]
        [DataMember]
        /// <summary>
        /// 召回产品处理
        /// </summary>
        public string RecallProductHandle { get; set; }
        [DisplayName("时间预估")]
        [DataMember]
        /// <summary>
        /// 完成召回需要时间预估
        /// </summary>
        public string FullRecallTimeEstimation { get; set; }
        [Browsable(false)]
        [DataMember]
        public DateTime CreateTime { get; set; }
        [Browsable(false)]
        [DataMember]
        public Guid CreateUserId { get; set; }
        [Browsable(false)]
        [DataMember]
        public DateTime UpdateTime { get; set; }
        [Browsable(false)]

        [DataMember]
        public Guid UpdateUserId { get; set; }
    }
}
