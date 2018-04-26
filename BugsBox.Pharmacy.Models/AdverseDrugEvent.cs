using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace BugsBox.Pharmacy.Models
{
    /// <summary>
    /// 不良事件登记
    /// </summary>
    [DataContract]
    public class AdverseDrugEvent : Entity, ILEntity
    {

        [DataMember(Name = "事件名称")]
        /// <summary>
        /// 事件名称
        /// </summary>
        public string EventTitle { get; set; }
        [DataMember(Name = "事件描述")]
        /// <summary>
        /// 事件描述
        /// </summary>
        public string EventDescription { get; set; }
        [DataMember(Name = "发生时间")]
        /// <summary>
        /// 事件发生时间
        /// </summary>
        public string OccurrenceTime { get; set; }

        [IgnoreDataMember]
        public DateTime CreateTime
        {
            get;
            set;
        }
        [IgnoreDataMember]
        public Guid CreateUserId
        {
            get;
            set;
        }
        [IgnoreDataMember]
        public DateTime UpdateTime
        {
            get;
            set;
        }
        [IgnoreDataMember]
        public Guid UpdateUserId
        {
            get;
            set;
        }
    }
}
