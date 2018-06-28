using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TechSvr.Utils.DTO
{
    public enum MessageCode
    {
        /// <summary>
        /// 确认提示框
        /// </summary>
        confirm,
        /// <summary>
        /// 警告类提示
        /// </summary>
        alert,
        /// <summary>
        /// 错误提示
        /// </summary>
        error,
        /// <summary>
        /// 一般性提示
        /// </summary>
        information
    }
}
