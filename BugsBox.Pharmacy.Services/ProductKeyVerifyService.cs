using BugsBox.Application.Core;
using BugsBox.Common;
using BugsBox.Pharmacy.Config;
using BugsBox.Pharmacy.Notification;
using BugsBox.Pharmacy.Service.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading;

namespace BugsBox.Pharmacy
{
    public class ProductKeyVerifyService
    {

        public static ProductKeyVerifyService Instance = new ProductKeyVerifyService();

        public event Action<ProductKeyChangedArg> ProductKeyChanged;

        string remoteservice = System.Configuration.ConfigurationManager.AppSettings["remoteservice"];
        string verifyInterval = System.Configuration.ConfigurationManager.AppSettings["verifyInterval"];
        private ILogger Log = LoggerHelper.Instance;
        public bool ProductKeyAvailable { get; private set; }
        private ProductKeyVerifyService()
        {
            ProductKeyChanged += (arg) =>
            {
                ProductKeyAvailable = arg.IsActive;

                if (!arg.IsActive)
                {
                    NotificationController.SayHello(arg.Message);
                }
            };
        }


        public void Register(string productKey)
        {
            try
            {
                if (RemoteVerifyPrdKey(productKey))
                {
                    CallBack(Constants.PRODUCT_KEY_AVAILABLE);
                }
                else
                {
                    CallBack(Constants.PRODUCT_KEY_NOT_AVAILABLE);
                }
            }
            catch (WebException)
            {
                Log.Error("网络不可用");
                CallBack("网络不可用");
            }
        }


        private bool RemoteVerifyPrdKey(string productKey)
        {
            HttpHelper http = new HttpHelper();
            var postdata = string.Format("CPUSerialNumber={0}&ProductKey={1}", MachineInfo.Instance.GetCPUSerialNumber(), productKey);
            string responseStr = "";

            if (PingHelper.Ping())
            {
                // 验证有效性
                responseStr = http.PostPage(remoteservice + "/api/device/VerifyProductKey", postdata);
            }

            var verifyKeyReponse = JsonHelper.FromJson<VerifyKeyReponse>(responseStr);
            if (verifyKeyReponse != null && verifyKeyReponse.ExpirationDate.HasValue)
            {
                //验证通过
                var filename = Constants.PRODUCT_KEY;

                var launchInfo = JsonSerializeHelper.DeSerializeJson<LaunchInfo>(filename);

                launchInfo.ExpirationDate = verifyKeyReponse.ExpirationDate.Value.Date;
                launchInfo.EncryptedText = EncryptionService.EncryptText(launchInfo.ExpirationDate.ToShortDateString());
                launchInfo.ProductKey = productKey;
                File.Delete(filename);
                launchInfo.SerializeJson(filename);

                WindowsRegistry.SetRegistryValue(Constants.EXPIRATION_DATE, launchInfo.ExpirationDate.ToShortDateString());
                WindowsRegistry.SetRegistryValue(Constants.ENCRYPTED_TEXT, launchInfo.EncryptedText);
                WindowsRegistry.SetRegistryValue(Constants.PRODUCT_KEY, productKey);

                var datediff = launchInfo.ExpirationDate.Subtract(DateTime.Now).Days;
                return datediff >= 0;
            }
            else
            {

                return false;

            }
        }

        /// <summary>
        /// 离线验证
        /// </summary>
        /// <returns></returns>
        private bool OfflineVerify(LaunchInfo launchInfo)
        {
            //远程验证失败，开始离线验证
            var expirationDate = EncryptionService.EncryptText(WindowsRegistry.GetRegistryValue(Constants.EXPIRATION_DATE));
            var encryptedText = WindowsRegistry.GetRegistryValue(Constants.ENCRYPTED_TEXT);
            var prdkey = WindowsRegistry.GetRegistryValue(Constants.PRODUCT_KEY);
            if (encryptedText == launchInfo.EncryptedText && prdkey == launchInfo.ProductKey)
            {
                return expirationDate == encryptedText;
            }
            else
            {
                return false;
            }
        }

        private void CreateRegistry(LaunchInfo launchInfo)
        {

            if (!WindowsRegistry.IsRegeditKeyExist(Constants.EXPIRATION_DATE))
            {
                WindowsRegistry.SetRegistryValue(Constants.EXPIRATION_DATE, launchInfo.ExpirationDate.ToShortDateString());
            }
            if (!WindowsRegistry.IsRegeditKeyExist(Constants.ENCRYPTED_TEXT))
            {
                WindowsRegistry.SetRegistryValue(Constants.ENCRYPTED_TEXT, launchInfo.EncryptedText);
            }
            if (!WindowsRegistry.IsRegeditKeyExist(Constants.PRODUCT_KEY))
            {
                WindowsRegistry.SetRegistryValue(Constants.PRODUCT_KEY, launchInfo.ProductKey);
            }
        }
        public void DeleteRegistry()
        {
            WindowsRegistry.DeleteRegistry();
        }

        private void CallBack(string message, string expirationDate = "已过期")
        {

            if (ProductKeyChanged != null)
                ProductKeyChanged(new ProductKeyChangedArg { Message = message, IsActive = message == Constants.PRODUCT_KEY_AVAILABLE, ExpirationDateStr = expirationDate });

        }
        public void Launch()
        {

            new Thread(() =>
            {
                var filename = Constants.PRODUCT_KEY;

                var launchInfo = JsonSerializeHelper.DeSerializeJson<LaunchInfo>(filename);


                if (launchInfo == null)
                {
                    //使用试用账号
                    launchInfo = new LaunchInfo
                    {
                        ComputerName = MachineInfo.Instance.GetComputerName(),
                        CPUSerialNumber = MachineInfo.Instance.GetCPUSerialNumber(),
                        MACAddress = MachineInfo.Instance.GetMacAddress(),
                        Name = PharmacyServiceConfig.Config.CurrentStore.Name,
                        ProductKey = Constants.DEFAULT_SECURITY_KEY,
                        ExpirationDate = DateTime.Now.AddDays(30).Date,
                        SystemType = MachineInfo.Instance.GetSystemType()
                    };
                    launchInfo.EncryptedText = EncryptionService.EncryptText(launchInfo.ExpirationDate.ToShortDateString());


                    WindowsRegistry.CreateRegistry();

                    if (WindowsRegistry.IsRegeditKeyExist(Constants.EXPIRATION_DATE))
                    {
                        CallBack(Constants.PRODUCT_KEY_NOT_AVAILABLE);
                    }

                    CreateRegistry(launchInfo);
                }
                launchInfo.Name = PharmacyServiceConfig.Config.CurrentStore.Name;


                HttpHelper http = new HttpHelper();
                var postdata = string.Format("ComputerName={0}&CPUSerialNumber={1}&MACAddress={2}&Name={3}&ProductKey={4}&SystemType={5}&ExpirationDate={6}", launchInfo.ComputerName, launchInfo.CPUSerialNumber, launchInfo.MACAddress, launchInfo.Name, launchInfo.ProductKey, launchInfo.SystemType, launchInfo.ExpirationDate);
                try
                {
                    if (PingHelper.Ping())
                    {
                        Log.Error("外部网络正常");
                        // 发送客户端设备信息
                        var strPHtml = http.PostPage(remoteservice + "/api/device/launch", postdata);
                    }
                    else
                    {
                        Log.Error("外部网络不通");
                    }
                }
                catch (Exception)
                {

                }
                if (File.Exists(filename))
                {
                    File.Delete(filename);
                }
                launchInfo.SerializeJson(filename);

                while (true)
                {
                    launchInfo = JsonSerializeHelper.DeSerializeJson<LaunchInfo>(filename);

                    if (launchInfo == null)
                    {
                        CallBack(Constants.PRODUCT_KEY_NOT_AVAILABLE);
                    }
                    else
                    {
                        var networkIsNotAvailable = PingHelper.Ping();

                        if (networkIsNotAvailable)
                        {
                            try
                            {
                                if (RemoteVerifyPrdKey(launchInfo.ProductKey))
                                {
                                    CallBack(Constants.PRODUCT_KEY_AVAILABLE);
                                }
                                else
                                {
                                    CallBack(Constants.PRODUCT_KEY_NOT_AVAILABLE);
                                }
                            }
                            catch (WebException)
                            {
                                networkIsNotAvailable = false;
                            }
                        }

                        if (!networkIsNotAvailable)
                        {
                            if (OfflineVerify(launchInfo))
                            {
                                CallBack(Constants.PRODUCT_KEY_AVAILABLE);
                            }
                            else
                            {
                                CallBack(Constants.PRODUCT_KEY_NOT_AVAILABLE);
                            }
                        }
                    }

                    Thread.Sleep(new TimeSpan(0, int.Parse(verifyInterval), 0));
                }


            }).Start();

        }

    }
}
