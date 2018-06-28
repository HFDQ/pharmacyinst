using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;

namespace TechSvr.Utils
{
    public class InputArgs
    {

        public string PostBody { get; private set; }
        [JsonProperty("msgtype")]
        public string MsgType { get; private set; }
        [JsonProperty("infname")]
        public string InfName { get; private set; }
        [JsonProperty("inftype")]
        public string InfType { get; private set; }
        [JsonProperty("validateid")]
        public string ValidateId { get; private set; }
        [JsonProperty("data")]
        public dynamic Data { get; private set; }
        [JsonProperty("systype")]
        public string SysType { get; private set; }

        public void SetPostBody(string postbody)
        {
            PostBody = postbody;
        }

        public static InputArgs Create(string postBody, string msgType, string infName, string infType, string validateId, string data, string sysType)
        {

            return new InputArgs
            {
                PostBody = postBody,
                MsgType = msgType,
                InfName = infName,
                InfType = infType,
                ValidateId = validateId,
                Data = data,
                SysType = sysType
            };

        }
    }
}
