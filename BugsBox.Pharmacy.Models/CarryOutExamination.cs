using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace BugsBox.Pharmacy.Models
{
    [DataContract]
    public class CarryOutExamination : Entity, ILEntity
    {
        [DisplayName("年度")]
        [DataMember]
        /// <summary>
        /// 年度
        /// </summary>
        public string DateYear { get; set; }
        [DisplayName("被考核部门")]
        [DataMember]
        /// <summary>
        /// 被考核部门
        /// </summary>
        public string ExaminedDepartMent { get; set; }
        [DisplayName("考核人")]
        [DataMember]
        /// <summary>
        /// 考核人
        /// </summary>
        public string Verifier { get; set; }
        [DisplayName("考核时间")]
        [DataMember]
        /// <summary>
        /// 考核时间
        /// </summary>
        public DateTime VerifierDate { get; set; }
        [DisplayName("考核文件名称")]

        [DataMember]
        /// <summary>
        /// 考核文件名称
        /// </summary>
        public string VerifierFileName { get; set; }
        [DisplayName("考核内容及标准")]

        [DataMember]
        /// <summary>
        /// 考核内容及标准
        /// </summary>
        public string VerifierContent { get; set; }
        [DisplayName("存在的问题")]
        [DataMember]
        /// <summary>
        /// 存在的问题
        /// </summary>
        public string ExistingProblems { get; set; }
        [DisplayName("考核人签字")]

        [DataMember]
        /// <summary>
        /// 考核人签字
        /// </summary>
        public string VerifierSignature { get; set; }
        [DisplayName("考核签字时间")]
        [DataMember]
        /// <summary>
        /// 考核签字时间
        /// </summary>
        public string VerifierSignatureDate { get; set; }
        [DisplayName("整改措施")]

        [DataMember]
        /// <summary>
        /// 整改措施
        /// </summary>
        public string RectifyHandle { get; set; }
        [DisplayName("被考核人签字")]
        [DataMember]
        /// <summary>
        /// 被考核人签字
        /// </summary>
        public string BeenVerifierSignature { get; set; }
        [DisplayName("被考核签字时间")]
        [DataMember]
        /// <summary>
        /// 被考核签字时间
        /// </summary>
        public string BeenVerifierSignatureDate { get; set; }
        [DisplayName("被考核人部门负责人签字")]
        [DataMember]
        /// <summary>
        /// 被考核人部门负责人签字
        /// </summary>
        public string BeenVerifiedDepartSignature { get; set; }
        [DisplayName("使用部门")]
        [DataMember]
        /// <summary>
        /// 使用部门
        /// </summary>
        public string UsedDepartment { get; set; }
        [DataMember]
        [Browsable(false)]
        public DateTime CreateTime { get; set; }
        [Browsable(false)]
        [DataMember]
        public Guid CreateUserId { get; set; }
        [DisplayName("更新时间")]
        [DataMember]
        public DateTime UpdateTime { get; set; }
        [Browsable(false)]
        [DataMember]
        public Guid UpdateUserId { get; set; }
    }

}
