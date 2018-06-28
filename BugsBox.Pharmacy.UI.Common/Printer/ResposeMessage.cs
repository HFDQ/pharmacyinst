using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TechSvr.Utils.DTO
{
    /// <summary>
    /// 命令执行结果
    /// </summary>
    public class ResposeMessage
    {
        /// <summary>
        /// 消息类型
        /// </summary>
        public string type { get; set; }
        /// <summary>
        /// 消息内容
        /// </summary>
        public string message { get; set; }
        /// <summary>
        /// 消息代码
        /// </summary>
        public string messageCode { get; set; }
        /// <summary>
        /// URL链接
        /// </summary>
        public string link { get; set; }
        /// <summary>
        /// 插件执行返回数据
        /// </summary>
        public object data { get; set; }

    }
}
