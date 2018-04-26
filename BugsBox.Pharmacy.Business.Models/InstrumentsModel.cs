using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.ComponentModel;

namespace BugsBox.Pharmacy.Business.Models
{
    /// <summary>
    /// 医疗器械基础信息Model
    /// </summary>
    public class InstrumentsModel
    {
        [DisplayName("标识码")]
        [DataMember]
        public Guid Id { get; set; }

        [DisplayName("名称")]
        [DataMember(Order = 1)]
        public string ProductGeneralName { get; set; }

        [DisplayName("注册证编号或者备案凭证编号")]
        [DataMember(Order = 3)]
        public string LicensePermissionNumber { get; set; }

        [DisplayName("产品技术编号")]
        [DataMember(Order = 4)]
        public string PerformanceStandards { get; set; }

        [DisplayName("生产企业生产企业许可证编号或备案凭证编号")]
        [DataMember(Order = 5)]
        public string InstEntProductLiscencePermitNumber { get; set; }

        [DisplayName("产品编号")]
        [DataMember(Order = 6)]
        public string Code { get; set; }

        [DisplayName("档案编号")]
        [DataMember(Order = 6)]
        public string DocCode { get; set; }

        [DisplayName("拼音码")]
        [DataMember(Order = 7)]
        public string Pinyin { get; set; }

        [DisplayName("条形码")]
        [DataMember(Order = 6)]
        public string BarCode { get; set; }

        [DisplayName("单位")]
        [DataMember(Order = 11)]
        public string DictionaryMeasurementUnitCode { get; set; }

        [DisplayName("产品型号")]
        [DataMember(Order = 12)]
        public string DictionaryDosageCode { get; set; }

        [DisplayName("规格")]
        [DataMember(Order = 13)]
        public string DictionarySpecificationCode { get; set; }

        [DisplayName("厂家全称")]
        [DataMember(Order = 14)]
        public string FactoryName { get; set; }

        /// <summary>
        /// 联系方式-映射到品种信息的厂家简称字段
        /// </summary>
        [DisplayName("联系方式")]
        [DataMember(Order = 14)]
        public string Contact { get; set; }
        
        [DisplayName("经营范围")]
        [DataMember(Order = 16)]
        public string BusinessScopeCode { get; set; }

        [DisplayName("是否审批")]
        [DataMember(Order = 17)]
        public string IsApproval { get; set; }

        [DisplayName("是否人为锁定")]
        [DataMember(Order = 18)]
        public string Locked { get; set; }

        [DisplayName("是否有效")]
        [DataMember(Order = 19)]
        public string Valid { get; set; }

        [DisplayName("无效原因")]
        [DataMember(Order = 19)]
        public string NotValidReason { get; set; }

        [DisplayName("仓库")]
        [DataMember(Order = 20)]
        public string WareHouses { get; set; }

        [DisplayName("库位(货架)")]
        [DataMember(Order = 20)]
        public string WareHouseZone { get; set; }

        [DisplayName("存储方式")]
        [DataMember(Order = 21)]
        public string DrugStorageTypeCode { get; set; }

        [DisplayName("最大库存")]
        [DataMember(Order = 22)]
        public int MaxInventoryCount { get; set; }

        [DisplayName("最小库存")]
        [DataMember(Order = 23)]
        public int MinInventoryCount { get; set; }
                
        #region 价格信息
        [DisplayName("价格")]
        [DataMember(Order = 26)]
        public decimal Price { get; set; }

        [DisplayName("销售价")]
        [DataMember(Order = 27)]
        public decimal SalePrice { get; set; }        

        [DisplayName("最高限价")]
        [DataMember(Order = 30)]
        public decimal LimitedUpPrice { get; set; }

        [DisplayName("最低限价")]
        [DataMember(Order = 31)]
        public decimal LimitedLowPrice { get; set; }

        #endregion
        
        [DisplayName("是否进口")]
        [DataMember(Order = 33)]
        public string IsImport { get; set; }
        
        [DisplayName("有效期")]
        [DataMember(Order = 37)]
        public int ValidPeriod { get; set; }
             

        [DisplayName("管理分类")]
        [DataMember(Order = 44)]
        public string DrugCategoryCode { get; set; }

        [DisplayName("器械分类码")]
        [DataMember(Order = 45)]
        public string StandardCode { get; set; }

        [DisplayName("采购员意见")]
        [DataMember(Order = 46)]
        public string Description { get; set; }

        [DisplayName("创建时间")]
        [DataMember(Order = 48)]
        public DateTime CreateTime { get; set; }

        [DisplayName("创建人")]
        [DataMember(Order = 49)]
        public string CreateUserName { get; set; }
    }

    public class InstInventeryModel
    {
        [DataMember]
        public Guid InventoryID { get; set; }

        //药品通用名
        [DataMember]
        public string ProductGeneralName { get; set; }

        //规格
        [DataMember]
        public string DictionarySpecificationCode { get; set; }

        //药品单位
        [DataMember]
        public string DictionaryMeasurementUnitCode { get; set; }

        //厂家全称
        [DataMember]
        public string FactoryName { get; set; }

        //产地
        [DataMember]
        public string Origin { get; set; }

        //型号
        [DataMember]
        public string DictionaryDosageCode { get; set; }

        //注册证号码
        [DataMember]
        public string LicensePermissionNumber { get; set; }

        /// <summary>
        /// 生产企业的生产企业许可证编号（或备案凭证号）
        /// </summary>
        [DataMember]
        public string InstEntProductLiscencePermitNumber { get; set; }

        /// <summary>
        /// 器械分类码
        /// </summary>
        [DataMember]
        public string StandardCode { get; set; }

        /// <summary>
        /// 药品分类 
        /// </summary>
        [DataMember]
        public string DrugCategoryCode { get; set; }

        // 采购价
        [DataMember]
        public decimal PurchasePrice { get; set; }

        // 供应商名称
        [DataMember]
        public string SupplyUnitName { get; set; }

        // 生产批号
        [DataMember]
        public string BatchNumber { get; set; }

        // 生产日期
        [DataMember]
        public DateTime PruductDate { get; set; }

        // 有效期至
        [DataMember]
        public DateTime OutValidDate { get; set; }

        // 有效期至
        [DataMember]
        public string OutValidDateStr { get { return OutValidDate.Year == 2050 ? "无" : OutValidDate.ToLongDateString(); } }

        // 库区名
        [DataMember]
        public String WarehouseZoneName { get; set; }

        /// <summary>
        /// 入库时数量
        /// </summary>
        [DataMember]
        public decimal InInventoryCount { get; set; }

        // 现有库存
        [DataMember]
        public decimal CurrentInventoryCount { get; set; }

        // 可用库存
        [DataMember]
        public decimal CanSaleNum { get; set; }

        // 记录数
        [DataMember]
        public int RecordCount { get; set; }

        // 总数
        [DataMember]
        public decimal TotalQuantityCount { get; set; }

              
        [DataMember]        
        [DisplayName("总价")]
        public decimal PriceCount { get { return decimal.Round(this.CanSaleNum * this.PurchasePrice, 4); } }


        //是否被锁
        [DataMember]
        public bool isValid { get; set; }
        
        [DisplayName("是否有效")]
        public string IsValid { get { return this.isValid ? "有效" : "无效"; } }

        //是否过期
        [DataMember]
        public string IsOutDate { get; set; }


        //实盘数据
        [DataMember]
        public decimal Realamount { get; set; }

        //报损报溢数量
        [DataMember]
        public decimal DismantingAmount { get; set; }

        //品种ID
        [DataMember]
        public Guid DrugInfoId { get; set; }

        [DataMember]
        [DisplayName("采购单号")] 
        public string PurchaseOrderDocumentNumber { get; set; }

        [DataMember]        
        
        public Guid PurchaseOrderId { get; set; }

        /// <summary>
        /// 入库细节ID
        /// </summary>
        public Guid PurchaseInInventoryDetailId { get; set; }
    }

    /// <summary>
    /// 器械查询模型
    /// </summary>
    public class InstInventoryQueryModel
    {
        [DataMember]
        public string Keyword { get; set; }

        [DataMember]
        public string BatchNumber { get; set; }
        [DataMember]
        public Guid WarehouseZoneId { get; set; }
        [DataMember]
        public string FactoryName { get; set; }
        [DataMember]
        public string DrugCategoryCode { get; set; }
        [DataMember]
        public bool IsAccurate { get; set; }

        public int PageIndex { get; set; }

        public int PageSize { get; set; }
    }
}
