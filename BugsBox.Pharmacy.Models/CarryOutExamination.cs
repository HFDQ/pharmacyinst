using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BugsBox.Pharmacy.Models
{
    public class CarryOutExamination : Entity, ILEntity
    {
        /// <summary>
        /// 年度
        /// </summary>
        public string DateYear { get; set; }
        /// <summary>
        /// 被考核部门
        /// </summary>
        public string ExaminedDepartMent { get; set; }

        /// <summary>
        /// 考核人
        /// </summary>
        public string Verifier { get; set; }

        /// <summary>
        /// 考核时间
        /// </summary>
        public string VerifierDate { get; set; }


        /// <summary>
        /// 考核文件名称
        /// </summary>
        public string VerifierFileName { get; set; }


        /// <summary>
        /// 考核内容及标准
        /// </summary>
        public string VerifierContent { get; set; }
        /// <summary>
        /// 存在的问题
        /// </summary>
        public string ExistingProblems { get; set; }


        /// <summary>
        /// 考核人签字
        /// </summary>
        public string VerifierSignature { get; set; }

        /// <summary>
        /// 考核签字时间
        /// </summary>
        public string VerifierSignatureDate { get; set; }



        /// <summary>
        /// 整改措施
        /// </summary>
        public string RectifyHandle { get; set; }


        /// <summary>
        /// 被考核人签字
        /// </summary>
        public string BeenVerifierSignature { get; set; }

        /// <summary>
        /// 被考核签字时间
        /// </summary>
        public string BeenVerifierSignatureDate { get; set; }

        /// <summary>
        /// 被考核人部门负责人签字
        /// </summary>
        public string BeenVerifiedDepartSignature { get; set; }

        /// <summary>
        /// 使用部门
        /// </summary>
        public string UsedDepartment { get; set; }


        public DateTime CreateTime { get; set; }
        public Guid CreateUserId { get; set; }
        public DateTime UpdateTime { get; set; }
        public Guid UpdateUserId { get; set; }
    }

}
