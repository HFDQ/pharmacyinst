using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace BugsBox.Pharmacy.Models
{
    [DataContract]
    public class ReCallEvent : Entity, ILEntity
    {
        [DisplayName("产品名称")]
        [DataMember]
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
        [DisplayName("产品适用范围")]
        [DataMember]
        /// <summary>
        /// 产品适用范围
        /// </summary>
        public string ProductScope { get; set; }
        [DisplayName("涉及的国家和地区")]
        [DataMember]
        /// <summary>
        /// 涉及的国家和地区
        /// </summary>
        public string AreaInvolved { get; set; }
        [DisplayName("涉及产品的型号和规格")]
        [DataMember]

        /// <summary>
        /// 涉及产品的型号和规格
        /// </summary>
        public string ProductInvolved { get; set; }
        [DisplayName("涉及产品生产的数量")]
        [DataMember]
        /// <summary>
        /// 涉及产品生产的数量
        /// </summary>
        public int ProductMakeCountInvolved { get; set; }
        [DisplayName("涉及产品销售的数量")]
        [DataMember]

        /// <summary>
        /// 涉及产品销售的数量
        /// </summary>
        public int ProductSaleCountInvolved { get; set; }
        [DisplayName("识别信息")]
        [DataMember]
        /// <summary>
        /// 识别信息
        /// </summary>
        public string IdentifyInfo { get; set; }
        [DisplayName("召回原因")]
        [DataMember]
        /// <summary>
        /// 召回原因
        /// </summary>
        public string RecallReason { get; set; }
        [DisplayName("纠正行动简述")]

        [DataMember]
        /// <summary>
        /// 纠正行动简述
        /// </summary>
        public string CorrectiveInfo { get; set; }
        [DisplayName("报告单位")]
        [DataMember]
        /// <summary>
        /// 报告单位
        /// </summary>
        public string ReportUnit { get; set; }
        [DisplayName("报告人")]
        [DataMember]
        /// <summary>
        /// 报告人
        /// </summary>
        public string Reporter { get; set; }
        [DisplayName("负责人")]
        [DataMember]
        /// <summary>
        /// 负责人
        /// </summary>
        public string Principal { get; set; }
        [DisplayName("报告日期")]
        [DataMember]
        /// <summary>
        /// 报告日期
        /// </summary>
        public DateTime ReportDate { get; set; }
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
