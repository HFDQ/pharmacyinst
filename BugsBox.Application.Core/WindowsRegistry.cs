using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Win32;
namespace BugsBox.Application.Core
{
    public class WindowsRegistry
    {


        const string REGISTRY_ITEM_PATH = "software\\pharmacyinst";
        /// <summary>
        /// 创建注册表项
        /// </summary>
        /// <param name="registryItemPath"></param>
        public static void CreateRegistry(string registryItemPath = REGISTRY_ITEM_PATH)
        {
            RegistryKey key = Registry.LocalMachine;
            RegistryKey software = key.CreateSubKey(registryItemPath);
            //在HKEY_LOCAL_MACHINE\SOFTWARE下新建名为test的注册表项。如果已经存在则不影响！
        }

        /// <summary>
        /// 获取注册表值
        /// </summary>
        /// <returns></returns>
        public static string GetRegistryValue(string key, string registryItemPath = REGISTRY_ITEM_PATH)
        {
            string info = "";
            RegistryKey Key;
            Key = Registry.LocalMachine;
            var myreg = Key.OpenSubKey(registryItemPath);
            info = myreg.GetValue(key).ToString();
            myreg.Close();
            return info;
        }

        /// <summary>
        /// 修改注册表项值
        /// </summary>
        /// <param name="subKey"></param>
        /// <param name="val"></param>
        /// <param name="registryItemPath"></param>
        public static void SetRegistryValue(string subKey, string val, string registryItemPath = REGISTRY_ITEM_PATH)
        {
            using (RegistryKey key = Registry.LocalMachine)
            {
                RegistryKey software = key.OpenSubKey(registryItemPath, true); //该项必须已存在
                software.SetValue(subKey, val);
                //在HKEY_LOCAL_MACHINE\SOFTWARE\test下创建一个名为“test”，值为“博客园”的键值。如果该键值原本已经存在，则会修改替换原来的键值，如果不存在则是创建该键值。
                // 注意：SetValue()还有第三个参数，主要是用于设置键值的类型，如：字符串，二进制，Dword等等~~默认是字符串。如：
                // software.SetValue("test", "0", RegistryValueKind.DWord); //二进制信息
                key.Close();
            }
        }



        /// <summary>
        /// 删除注册表项
        /// </summary>
        public static void DeleteRegistry(string registryItemPath = REGISTRY_ITEM_PATH)
        {
            RegistryKey key = Registry.LocalMachine;
            key.DeleteSubKey(registryItemPath, true); //该方法无返回值，直接调用即可
            key.Close();
        }

        /// <summary>
        /// 删除注册表值
        /// </summary>
        public static void DeleteRegistryValue(string subKey, string registryItemPath = REGISTRY_ITEM_PATH)
        {
            RegistryKey delKey = Registry.LocalMachine.OpenSubKey(registryItemPath, true);
            delKey.DeleteValue(subKey);
            delKey.Close();
        }

        /// <summary>
        /// 判断注册表项是否存在
        /// </summary>
        /// <returns></returns>
        public static bool IsRegeditItemExist()
        {
            string[] subkeyNames;
            RegistryKey hkml = Registry.LocalMachine;
            RegistryKey software = hkml.OpenSubKey("SOFTWARE");
            //RegistryKey software = hkml.OpenSubKey("SOFTWARE", true);  
            subkeyNames = software.GetSubKeyNames();
            //取得该项下所有子项的名称的序列，并传递给预定的数组中  
            foreach (string keyName in subkeyNames)
            //遍历整个数组  
            {
                if (keyName == "test")
                //判断子项的名称  
                {
                    hkml.Close();
                    return true;
                }
            }
            hkml.Close();
            return false;
        }
        /// <summary>
        /// 判断键值是否存在
        /// </summary>
        /// <returns></returns>
        public static bool IsRegeditKeyExist(string subKey, string registryItemPath = REGISTRY_ITEM_PATH)
        {
            string[] subkeyNames;
            RegistryKey hkml = Registry.LocalMachine;
            RegistryKey software = hkml.OpenSubKey(registryItemPath);
            //RegistryKey software = hkml.OpenSubKey("SOFTWARE\\test", true);
            subkeyNames = software.GetValueNames();
            //取得该项下所有键值的名称的序列，并传递给预定的数组中
            foreach (string keyName in subkeyNames)
            {
                if (keyName == subKey) //判断键值的名称
                {
                    hkml.Close();
                    return true;
                }

            }
            hkml.Close();
            return false;
        }
    }
}
