using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TechSvr.Utils.DTO
{
    public enum ResultType
    {
        /** 错误 对应值 "ERROR",一般用作系统异常,代码异常*/
        ERROR,

        /** 失败 对应值 "FAILT",一般用作业务逻辑判断失败，不允许 */
        FAILT,

        /** 正常 对应值 "NORMAL" */
        NORMAL,

        /**成功 对应值 "SUCCESS"*/
        SUCCESS

    }


}
