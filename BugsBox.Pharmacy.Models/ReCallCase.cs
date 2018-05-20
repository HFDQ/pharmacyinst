﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BugsBox.Pharmacy.Models
{
    public class ReCallCase : Entity, ILEntity
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
        /// 承担召回责任的收货人  应通知人数
        /// </summary>
        public int DutyReceiverShouldNotificationCount { get; set; }
        /// <summary>
        /// 承担召回责任的收货人  已通知人数
        /// </summary>
        public int DutyReceiverHaveNotificationCount { get; set; }
        /// <summary>
        /// 承担召回责任的收货人  通知时间
        /// </summary>
        public DateTime DutyReceiverNotificationDate { get; set; }
        /// <summary>
        /// 承担召回责任的收货人  通知方式
        /// </summary>
        public string DutyReceiverNotificationMethod { get; set; }


        /// <summary>
        /// 其他收货人  应通知人数
        /// </summary>
        public int OtherReceiverShouldNotificationCount { get; set; }
        /// <summary>
        /// 其他收货人  已通知人数
        /// </summary>
        public int OtherReceiverHaveNotificationCount { get; set; }
        /// <summary>
        /// 其他收货人  通知时间
        /// </summary>
        public DateTime OtherReceiverNotificationDate { get; set; }
        /// <summary>
        /// 其他收货人  通知方式
        /// </summary>
        public string OtherReceiverNotificationMethod { get; set; }

        /// <summary>
        /// 应召回数量
        /// </summary>
        public int ShouldRecallCount { get; set; }
        /// <summary>
        /// 已召回数量
        /// </summary>
        public int HavedRecallCount { get; set; }
        /// <summary>
        /// 有效性检查情况
        /// </summary>
        public string ValidityCheckInfo { get; set; }
        /// <summary>
        /// 召回产品处理
        /// </summary>
        public string RecallProductHandle { get; set; }
        /// <summary>
        /// 完成召回需要时间预估
        /// </summary>
        public string FullRecallTimeEstimation { get; set; }
        public DateTime CreateTime { get; set; }
        public Guid CreateUserId { get; set; }
        public DateTime UpdateTime { get; set; }
        public Guid UpdateUserId { get; set; }
    }
}
