using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BugsBox.Pharmacy.Models
{
    public class ReCallEvent : Entity, ILEntity
    {
        /// <summary>
        /// 产品名称
        /// </summary>
        public string DrugName { get; set; }
        /// <summary>
        /// 注册证号（备案凭证号）
        /// </summary>
        public string LisenceNum { get; set; }

        /// <summary>
        /// 生产企业
        /// </summary>
        public string Manufacturing { get; set; }

        /// <summary>
        /// 中国境内负责单位以及联系人
        /// </summary>
        public string PrincipalCompanyInfo { get; set; }

        /// <summary>
        /// 召回工作联系人以及联系方式
        /// </summary>
        public string RecallJobInfo { get; set; }
        /// <summary>
        /// 产品适用范围
        /// </summary>
        public string ProductScope { get; set; }

        /// <summary>
        /// 涉及的国家和地区
        /// </summary>
        public string AreaInvolved { get; set; }

        /// <summary>
        /// 涉及产品的型号和规格
        /// </summary>
        public string ProductInvolved { get; set; }

        /// <summary>
        /// 涉及产品生产的数量
        /// </summary>
        public int ProductMakeCountInvolved { get; set; }


        /// <summary>
        /// 涉及产品销售的数量
        /// </summary>
        public int ProductSaleCountInvolved { get; set; }

        /// <summary>
        /// 识别信息
        /// </summary>
        public string IdentifyInfo { get; set; }

        /// <summary>
        /// 召回原因
        /// </summary>
        public string RecallReason { get; set; }


        /// <summary>
        /// 纠正行动简述
        /// </summary>
        public string CorrectiveInfo { get; set; }

        /// <summary>
        /// 报告单位
        /// </summary>
        public string ReportUnit { get; set; }

        /// <summary>
        /// 报告人
        /// </summary>
        public string Reporter { get; set; }

        /// <summary>
        /// 负责人
        /// </summary>
        public string Principal { get; set; }

        /// <summary>
        /// 报告日期
        /// </summary>
        public string ReportDate { get; set; }

        public DateTime CreateTime { get; set; }
        public Guid CreateUserId { get; set; }
        public DateTime UpdateTime { get; set; }
        public Guid UpdateUserId { get; set; }
    }
}
