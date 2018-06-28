using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TechSvr.Utils.DTO;

namespace TechSvr.Utils
{
    public interface ICommand
    {
        /// <summary>
        /// 命令执行
        /// </summary>
        /// <param name="input">入参为string类型，格式为：XML或JSON</param>
        /// <returns></returns>
        ResposeMessage Excute(InputArgs input);

        string Name { get; }
    }
}
