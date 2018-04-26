using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace System
{
    public class TypesDefaultValues
    {
        public static readonly DateTime MaxDateTime = DateTime.Parse("2050-12-24");
        public static readonly DateTime MinDateTime = DateTime.Parse("1970-01-01");
    }
    public class Constants
    {
        public const string DEFAULT_SECURITY_KEY = "85D42B7C-90F2-4FF9-8CA5-AD6A41C67545";

        public const string PRODUCT_KEY = "prdkey";

        public const string EXPIRATION_DATE = "ExpirationDate";
        public const string ENCRYPTED_TEXT = "EncryptedText";

        public const string PRODUCT_KEY_NOT_AVAILABLE = "Product Key不可用,请联系管理员";
        public const string PRODUCT_KEY_AVAILABLE = "Product Key 验证通过";

        public const string MENU_GENERAL_SALE_PROCESS = "一般销售流程";
    }
}
