﻿ 
  
  
 
  
 
 
   
   
   
using System;
using System.Collections.Generic;
using System.ServiceModel;
using System.Xml.Linq;
using BugsBox.Application.Core;
using BugsBox.Pharmacy.Business.Models;
using BugsBox.Pharmacy.Models;
using BugsBox.Pharmacy.Service.Models; 
using BugsBox.Pharmacy.Business.Models.QueryModelExtesion; 
namespace BugsBox.Pharmacy.IServices
{ 
		/// <summary>
		/// 系统wcf数据库服务接口IPharmacyDatabaseService
		/// 所有数据库实体业务逻辑 
		/// </summary>  
	partial interface IPharmacyDatabaseService
	{  
		 
		#region 审批结点(ApprovalFlowBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<ApprovalFlow> GetApproveFlowsByUser(Guid userId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<ApprovalFlow> GetApproveFlowsByUserType(Guid userId,int type,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		ApprovalFlow GetApproveFlowInstance(Guid approvalFlowTypeID,Guid flowID,Guid userID,String comment,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<ApprovalFlow> GetApproveFlowsInfo(Guid flowTypeId,String changeNote,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		ApprovalFlow GetApproveFlowsByFlowID(Guid flowId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<ApprovalDetailsModel> GetApprovalDetails(Guid FlowID,int historyID,List<Object> searchConditions,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void SetApproveAction(ApprovalFlow flow,String action,Guid userID,String comment,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		int GetNextSubflowIDByFlowId(Guid flowid,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		int GetNeedApprovalCount(int approvalTypeValue,out string message);
			 
		#endregion 
		 
		#region 审批结点(ApprovalFlowNodeBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<ApprovalFlowNode> GetFinishApproveFlowsNodes(Guid FlowID,int historyID,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		ApprovalFlowNode GetNextApproveFlowsNode(Guid flowTypeId,Guid flowNodeID,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		ApprovalFlowNode GetFirstApproveFlowsNode(Guid flowTypeId,out string message);
			 
		#endregion 
		 
		#region 审批流程类型(ApprovalFlowTypeBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<ApprovalFlowType> GetApprovalFlowTypeByBusiness(ApprovalType approveType,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<ApprovalFlowType> GetApprovalFlowTypeByTypeList(Int32[] approveTypeList,out string message);
			 
		#endregion 
		 
		#region 审批流程记录(ApprovalFlowRecordBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<ApprovalFlowRecord> GetFinishApproveFlowsRecord(Guid FlowID,int historyID,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		ApprovalFlowRecord GetApproveFlowRecordInstance(ApprovalFlow flow,Guid userID,String comment,out string message);
			 
		#endregion 
		 
		#region 单据编号(BillDocumentCodeBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		BillDocumentCode GenerateBillDocumentCodeByTypeValue(int typeValue,out string message);
			 
		#endregion 
		 
		#region 经营范围(BusinessScopeBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 经营范围分类(BusinessScopeCategoryBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 经营方式(BusinessTypeBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 经营方式的管理要求分类详细(BusinessTypeManageCategoryDetailBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 商品附加属性(GoodsAdditionalPropertyBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 采购结算单(PurchaseCashOrderBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 配送信息(DeliveryBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<Delivery> GetSubmitedDeliveryByCondition(SalesCodeSearchInput condition,int pageindex,int pageSize,out PagerInfo pager,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<Delivery> GetCanceledDeliveryByCondition(SalesCodeSearchInput condition,int pageindex,int pageSize,out PagerInfo pager,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<Delivery> GetOutedDeliveryByCondition(SalesCodeSearchInput condition,int pageindex,int pageSize,out PagerInfo pager,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<Delivery> GetSignedDeliveryByCondition(SalesCodeSearchInput condition,int pageindex,int pageSize,out PagerInfo pager,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<Delivery> GetReturnedDeliveryByCondition(SalesCodeSearchInput condition,int pageindex,int pageSize,out PagerInfo pager,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<Delivery> GetDeliveryList(PagerInfo pager,DeliveryStatus deliveryStatus,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<Delivery> GetDeliveryPaged(DeliveryIndexInput deliveryIndexInput,out PagerInfo pager,int pageindex,int pageSize,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void SubmitDelivery(Delivery delivery,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void UpdateDelivery(Delivery delivery,out string message);
			 
		#endregion 
		 
		#region 部门(DepartmentBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<Department> GetSubDepartments(Guid pDepartmentId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		Department GetParentDepartment(Guid id,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		bool DeleteSubDepartment(Guid id,out string message);
			 
		#endregion 
		 
		#region 区域(DistrictBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 疑问药品(DoubtDrugBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<DoubtDrug> QueryPagedDoubtDrugsForManage(String drugInfoName,String batchNumber,DateTimeRange inInventoryDateRange,DateTimeRange productDateRange,DateTimeRange outDataRange,int index,int size,out PagerInfo pager,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		int GetNeedHandledDoubtDrug(out string message);
			 
		#endregion 
		 
		#region 药品批准文号(DrugApprovalNumberBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 药物分类(DrugCategoryBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 药物临床分类(DrugClinicalCategoryBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 剂型(DictionaryDosageBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 药品信息(DrugInfoBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<DrugInfo> GetDrugInfoByPurchaseUnit(Guid purchaseUnitGuid,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<DrugInfo> GetDrugInfoBySupplyUnit(Guid supplyUnitGuid,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		bool IsExistDrugInfo(DrugInfo info,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<DrugInfo> GetDrugInfoForDrugInfoForSalesSelector(Guid purchaseUnitGuid,String tym,String bwm,String code,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<DrugInfo> GetDrugInfoForPurchasing(String productName,String productGeneralName,String code,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<DrugInfo> GetDrugInfoForSupplyUnitWithQueryParas(Guid supplyUnitId,String generalName,String code,String standardCode,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<LackDrugModel> GetDrugInfoForOutofStock(out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		DrugInfo GetDrugInfoByFlowID(Guid flowId,out string message);

        //WFZ modified
            [OperationContract]
            [FaultContract(typeof(ServiceExceptionDetail))]
            DrugInfo GetGoodsInfoByFlowID(Guid flowId, out string message);
        //WFZ end
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void AddDrugInfoApproveFlow(DrugInfo su,Guid approvalFlowTypeID,Guid userID,String changeNote,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void ModifyDrugInfoApproveFlow(DrugInfo su,Guid approvalFlowTypeID,Guid userID,String changeNote,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<DrugInfo> GetLockDrugInfo(out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		int GetLockDrugInfoCount(out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<DrugInfo> GetPagedLockDrugInfo(out PagerInfo pager,int pageindex,int pageSize,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<DrugInfo> SearchPagedDrugInfosByAllStrings(String keys,int index,int size,out PagerInfo pager,out string message);
			 
		#endregion 
		 
		#region 药物库存(DrugInventoryRecordBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<DrugInventoryRecord> GetDrugInventoryRecordForDrugInfoForSalesSelector(Guid purchaseUnitGuid,String tym,String bwm,String code,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<DrugInventoryRecord> GetDrugInventoryRecordByCondition(String ProductName,String BatchNumber,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<DrugInventoryRecord> QueryPagedAllDrugInventoryRecordSelector(QueryDrugInventoryRecordBusinessModel queryModel,int index,int size,out PagerInfo pager,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<InventeryModel> StorageQuery(String ProductGeneralName,String StandardCode,String BatchNumber,Guid[] WarehouseZones,int index,int size,List<Object> searchConditions,out string message);
			 
		#endregion 
		 
		#region 药品养护记录(DrugMaintainRecordBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<DrugMaintainRecord> GetDrugMaintainRecordByCondition(DateTime StartDate,DateTime EndDate,Nullable<Int32> CompleteState,Nullable<Int32> DrugMaintainType,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		bool SaveDrugMaintainRecordByBillDocumentNo(String BillDocumentNo,bool IsCompleteState,out string message);
			 
		#endregion 
		 
		#region 药品养护记录明细(DrugMaintainRecordDetailBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<DrugMaintainRecordDetail> GetDrugMaintainRecordDetailByCondition(String BillDocumentNo,Nullable<DateTime> CheckDate,out string message);
			 
		#endregion 
		 
		#region 计量单位(DictionaryMeasurementUnitBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 拆零单位(DictionaryPiecemealUnitBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 药物规格(DictionarySpecificationBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 储藏方式(DictionaryStorageTypeBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 用户自定义药物类型(DictionaryUserDefinedTypeBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 授权书(AuthorizationDocBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 药品养护设置(DrugMaintainSetBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		DrugMaintainSet GetDrugMaintainSetByDrugMaintainTypeValue(int DrugMaintainTypeValue,out string message);
			 
		#endregion 
		 
		#region 员工(EmployeeBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<BusinessPersonModel> QueryBusinessPerson(QueryBusinessPersonModel queryBusinessPersonModel,out string message);
			 
		#endregion 
		 
		#region GMSP证书规定的经营范围(GMSPLicenseBusinessScopeBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 库存(InventoryRecordBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		InventoryRecord GetInventoryRecordByDrugInfoID(Guid drugInfoID,out string message);
			 
		#endregion 
		 
		#region 生产厂家 (ManufacturerBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 包装材质(PackagingMaterialBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 包装(PackagingUnitBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 付款方式(PaymentMethodBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region GSP证书(GSPLicenseBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region GMP证书(GMPLicenseBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 营业执照(BusinessLicenseBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PharmacyLicense> QueryPharmacyLicenseForOutdate(QueryPharmacyLicenseModel queryModel,out string message);
			 
		#endregion 
		 
		#region 药品生产许可证(MedicineProductionLicenseBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 药品经营许可证(MedicineBusinessLicenseBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 器械经营许可证(InstrumentsBusinessLicenseBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 器械生产许可证(InstrumentsProductionLicenseBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 医疗分类(MedicalCategoryBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 医疗详细分类(MedicalCategoryDetailBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 功能模块(ModuleBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<String> GetAuthorityKeys(Guid userId,out string message);
			 
		#endregion 
		 
		#region 功能模块分类(ModuleCatetoryBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 功能模块与角色的关联(ModuleWithRoleBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<ModuleWithRole> GetModuleWithRolesByRoleId(Guid roleId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<ModuleWithRole> GetModuleWithRolesByModuleId(Guid moduleId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		bool AuthModuleWithRoleCatetoryAuthModuleIds(Role role,ModuleCatetory catetory,List<Guid> authModuleIds,out string message);
			 
		#endregion 
		 
		#region 文件(PharmacyFileBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 采购合同(PurchaseAgreementBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 验收记录(PurchaseCheckingOrderBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 采购到货验收(PurchaseCheckingOrderDetailBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 库存记录(PurchaseInInventeryOrderBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 库存记录详细(PurchaseInInventeryOrderDetailBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 管理要求分类(PurchaseManageCategoryBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 管理要求分类详细(PurchaseManageCategoryDetailBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 采购单(PurchaseOrderBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseRecord> GetPurchaseRecords(int type,String productGeneralName,DateTime startTime,DateTime endTime,Guid[] purchaseUnits,int index,int size,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseRCRecord> GetPurchaseRCRecords(int type,String productGeneralName,DateTime startTime,DateTime endTime,Guid[] purchaseUnits,int index,int size,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseOrderDetailEntity> GetPurchaseHistoryForDrugInfo(Guid drupInfoId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		PurchaseOrdeEntity GetPurchaseOrderEntity(Guid purchaseOrderId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseOrdeEntity> GetPurchaseOrders(String documentNumber,DateTime startTime,DateTime endTime,Int32[] orderStatusValue,Guid[] purchaseUnits,int index,int size,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseOrderDetailEntity> GetPurchaseOrderDetails(Guid purchaseOrderId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		String CreatePurchaseOrder(PurchaseOrder order,List<PurchaseOrderDetail> orderDetails,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void HandlePurchaseReceinvingAmountDiff(PurchaseOrder purchaseOrder,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseCommonEntity> GetPurchaseReceivingOrdersByPurchaseOrderId(Guid purchaseOrderId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		String CreatePurchaseReceivingOrderByEnity(PurchaseCommonEntity order,List<PurchaseReceivingOrderDetailEntity> orderDetails,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		String CreatePurchaseReceivingOrder(PurchaseReceivingOrder order,List<PurchaseReceivingOrderDetail> orderDetails,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseCommonEntity> GetPurchaseReceivingOrders(String documentNumber,DateTime startTime,DateTime endTime,Int32[] orderStatusValue,Guid[] purchaseUnits,int index,int size,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseReceivingOrderDetailEntity> GetPurchaseReceivingOrderDetails(Guid orderId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseCommonEntity> GetPurchaseCheckingOrdersByPurchaseOrderId(Guid purchaseOrderId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		String CreatePurchaseCheckingOrderByEnity(PurchaseCommonEntity order,List<PurchaseCheckingOrderDetailEntity> orderDetails,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		String CreatePurchaseCheckingOrder(PurchaseCheckingOrder order,List<PurchaseCheckingOrderDetail> orderDetails,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseCommonEntity> GetPurchaseCheckingOrders(String documentNumber,DateTime startTime,DateTime endTime,Int32[] orderStatusValue,Guid[] purchaseUnits,int index,int size,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseCheckingOrderDetailEntity> GetPurchaseCheckingOrderDetails(Guid orderId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseCommonEntity> GetPurchaseInInventeryOrdersByPurchaseOrderId(Guid purchaseOrderId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		String CreatePurchaseInInventeryOrderByEnity(PurchaseCommonEntity order,List<PurchaseInInventeryOrderDetailEntity> orderDetails,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		String CreatePurchaseInInventeryOrder(PurchaseInInventeryOrder order,List<PurchaseInInventeryOrderDetail> orderDetails,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseInInventeryOrderDetailEntity> GetPurchaseInInventeryOrderDetails(Guid orderId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseCommonEntity> GetPurchaseInInventeryOrders(String documentNumber,DateTime startTime,DateTime endTime,Int32[] orderStatusValue,Guid[] purchaseUnits,int index,int size,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseCommonEntity> GetPurchaseOrderReturnsByPurchaseOrderId(Guid purchaseOrderId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		String CreatePurchaseOrderReturnByEnity(PurchaseCommonEntity order,List<PurchaseOrderReturnDetailEntity> orderDetails,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		String CreatePurchaseOrderReturn(PurchaseOrderReturn order,List<PurchaseOrderReturnDetail> orderDetails,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseCommonEntity> GetPurchaseOrderReturns(String documentNumber,DateTime startTime,DateTime endTime,Int32[] orderStatusValue,Guid[] purchaseUnits,int index,int size,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseOrderReturnDetailEntity> GetPurchaseOrderReturnDetails(Guid orderId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseCommonEntity> GetPurchaseCashOrdersByPurchaseOrderId(Guid purchaseOrderId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		String CreatePurchaseCashOrderByEnity(PurchaseCommonEntity order,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		String CreatePurchaseCashOrder(PurchaseCashOrder order,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseCommonEntity> GetPurchaseCashOrders(String documentNumber,DateTime startTime,DateTime endTime,Int32[] orderStatusValue,Guid[] purchaseUnits,int index,int size,out string message);
			 
		#endregion 
		 
		#region 采购明细(PurchaseOrderDetailBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<PurchaseOrderDetail> GetPurchaseOrderDetailByOrderId(Guid purchaseOrderId,out string message);
			 
		#endregion 
		 
		#region (PurchaseOrderReturnBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region (PurchaseOrderReturnDetailBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 采购收货单(PurchaseReceivingOrderBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 采购收货详细单(PurchaseReceivingOrderDetailBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 购货单位(PurchaseUnitBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<String> GetBusinessScopeCodesByPurchaseUnitGuid(Guid purchaseUnitGuid,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<String> GetBusinessScopeCodesByPurchaseUnit(PurchaseUnit purchaseUnit,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<String> GetManageCategoryDetailByPurchaseUnitGuid(Guid purchaseUnitGuid,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<String> GetManageCategoryDetailByPurchaseUnit(PurchaseUnit purchaseUnit,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseUnit> GetPurchaseUnitsForSelector(String name,String code,String py,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		bool IsExistPurchaseUnitByName(String name,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		PurchaseUnit GetPurchaseUnitByName(String name,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		bool UpdatePurchaseUnitByName(String name,PurchaseUnit item,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		PurchaseUnit GetPurchaseUnitByFlowID(Guid flowId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void AddPurchaseUnitApproveFlow(PurchaseUnit su,Guid approvalFlowTypeID,Guid userID,String changeNote,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void ModifyPurchaseUnitApproveFlow(PurchaseUnit su,Guid approvalFlowTypeID,Guid userID,String changeNote,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<PurchaseUnit> GetLockPurchaseUnit(out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		int GetLockPurchaseUnitCount(out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<PurchaseUnit> GetPagedLockPurchaseUnit(out PagerInfo pager,int pageindex,int pageSize,out string message);
			 
		#endregion 
		 
		#region 购货单位采购人员(PurchaseUnitBuyerBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 购货单位提货人员(PurchaseUnitDelivererBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 购货单位类型(PurchaseUnitTypeBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region (PurchasingPlanBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region (PurchasingPlanDetailBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 不常用字(生僻字)(RarewordBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 零售会员(RetailMemberBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region (RetailOrderBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<RetailOrder> GetRetailOrderPagedByCode(String orderCode,out PagerInfo pager,int pageindex,int pageSize,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void AddRetailOrderAndDetails(RetailOrder ro,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void DeleteRetailOrderAndDetails(Guid retailOrderID,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void SaveRetailOrderAndDetails(RetailOrder ro,out string message);
			 
		#endregion 
		 
		#region 零售单明细(RetailOrderDetailBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 系统角色(RoleBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 角色与用户的关联(RoleWithUserBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<RoleWithUser> GetRoleWithUserInfo(Guid UserID,Guid RoleId,out string message);
			 
		#endregion 
		 
		#region 销售单(SalesOrderBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<SalesOrder> GetOrderStatusList(List<Int32> orderStatusList,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void AddSalesOrderAndDetails(SalesOrder so,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void ModifySalesOrderAndDetails(SalesOrder so,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void DeleteSalesOrderAndDetails(Guid salesOrderID,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<SalesOrder> GetSalesOrderByStatus(int statusValue,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<SalesOrder> GetSalesOrderByOrderCode(String code,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<SalesOrderStatisticOutput> AddupSalesOrder(SalesOrderStatisticInput input,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<SalesOrder> GetSalesOrderBalanceCodePaged(SalesCodeSearchInput searchInput,out PagerInfo pager,int pageindex,int pageSize,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<SalesOrder> GetSalesOrderCodePaged(SalesCodeSearchInput searchInput,out PagerInfo pager,int pageindex,int pageSize,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<SalesOrder> GetSalesOrderCancelCodePaged(SalesCodeSearchInput searchInput,out PagerInfo pager,int pageindex,int pageSize,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<User> GetSalesOrderOperatorUser(out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<User> GetSalesOrderCancelUser(out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<User> GetSalesOrderBalanceUser(out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<SalesOrderRecordOutput> GetSalesOrderRecordPaged(SalesOrderRecordInput searchInput,out PagerInfo pager,int pageindex,int pageSize,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void CancelSalesOrder(SalesOrder so,out string message);
			 
		#endregion 
		 
		#region (SalesOrderDeliverDetailBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 销售发货记录(SalesOrderDeliverRecordBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 销售单明细(SalesOrderDetailBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region (SalesOrderReturnBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<SalesOrderReturn> GetAllNoOverOrderReturn(out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<SalesOrderReturn> GetSalesOrderReturnByStatus(List<Int32> listOrderReturnStatus,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		SalesOrderReturn GetLastOrderReturnByReturnOrder(Guid outInventoryID,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void AddSalesOrderReturnAndDetail(SalesOrderReturn sor,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void CancelSalesOrderReturn(SalesOrderReturn sor,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void AcceptSalesOrderReturn(SalesOrderReturn sor,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void SaveReturnOrderInventory(SalesOrderReturn sor,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<SalesOrderReturn> GetReturnOrderCodePaged(SalesCodeSearchInput searchInput,out PagerInfo pager,int pageindex,int pageSize,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<SalesOrderReturn> GetReturnOrderCheckCodePaged(SalesCodeSearchInput searchInput,out PagerInfo pager,int pageindex,int pageSize,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<SalesOrderReturn> GetReturnOrderInventoryCodePaged(SalesCodeSearchInput searchInput,out PagerInfo pager,int pageindex,int pageSize,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<SalesOrderReturn> GetReturnOrderCancelCodePaged(SalesCodeSearchInput searchInput,out PagerInfo pager,int pageindex,int pageSize,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void SaveReturnOrderOutventory(SalesOrderReturn sor,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<User> GetSalesReturnOperatorUser(out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<User> GetSalesReturnCheckUser(out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<User> GetSalesReturnInventoryUser(out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<User> GetSalesReturnCancelUser(out string message);
			 
		#endregion 
		 
		#region (SalesOrderReturnDetailBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<SalesOrderReturnDetail> getOrderReturnDetailListByOrderID(Guid orderID,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<SalesOrderReturnDetail> GetLastReturnDetailByReturnOrder(Guid orderID,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void SaveOrderReturnDetailList(SalesOrder orderInfo,List<SalesOrderReturnDetail> detailList,out string message);
			 
		#endregion 
		 
		#region 销售出库单(OutInventoryBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<OutInventory> GetSubmitedOutInventoryByCondition(SalesCodeSearchInput condition,int pageindex,int pageSize,out PagerInfo pager,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<OutInventory> GetAcceptedOutInventoryByCondition(SalesCodeSearchInput condition,int pageindex,int pageSize,out PagerInfo pager,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<OutInventory> GetOutInventoryByStatus(int iStatus,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<OutInventory> GetAllNotApprovalOutInventory(out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<OutInventory> GetOutInventoryByOrderID(Guid orderID,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void SubmitOutInventory(OutInventory entity,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void AcceptOutInverntory(OutInventory entity,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<OutInventoryDetail> GetOutInventoryDetailFromOrderDetail(Guid orderID,out string message);
			 
		#endregion 
		 
		#region 设置重点药品记录表(SetSpeicalDrugRecordBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void CreateSetSpeicalDrugRecords(SetSpeicalDrugRecord item,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<SetSpeicalDrugRecord> GetSetSpeicalDrugRecords(out string message);
			 
		#endregion 
		 
		#region 特殊管理药物类型(SpecialDrugCategoryBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 门店(StoreBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 供货单位(SupplyUnitBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<String> GetBusinessScopeCodesBySupplyUnitGuid(Guid supplyUnitGuid,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<String> GetBusinessScopeCodesBySupplyUnit(SupplyUnit supplyUnit,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<String> GetManageCategoryDetailBySupplyUnitGuid(Guid supplyUnitGuid,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<String> GetManageCategoryDetailBySupplyUnit(SupplyUnit supplyUnit,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		SupplyUnit GetSupplyUnitByFlowID(Guid flowId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void AddSupplyUnitApproveFlow(SupplyUnit su,Guid approvalFlowTypeID,Guid userID,String changeNote,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void ModifySupplyUnitApproveFlow(SupplyUnit su,Guid approvalFlowTypeID,Guid userID,String changeNote,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<SupplyUnit> GetSupplyUnitForSupplyUnitSelector(Guid drugGuid,String name,String pinyin,String[] jyfwcode,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		bool IsExistSupplyUnitByName(String name,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		SupplyUnit GetSupplyUnitByName(String name,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		bool UpdateSupplyUnitByName(String name,SupplyUnit item,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		List<SupplyUnit> GetLockSupplyUnitUnit(out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<SupplyUnit> GetPagedLockSupplyUnitUnit(out PagerInfo pager,int pageindex,int pageSize,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		int GetLockSupplyUnitCount(out string message);
			 
		#endregion 
		 
		#region 供货商销售人员(SupplyUnitSalesmanBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 税率(TaxRateBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 企业类型(UnitTypeBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 数据上传记录(UploadRecordBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 系统用户(UserBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<User> GetAllUsers(out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		IEnumerable<User> GetUserInfo(String Account,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		User UserLogon(String account,String pwd,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		String UserLogout(Guid userId,out string message);
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		Employee GetEmployeeByUserId(Guid userId,out string message);
			 
		#endregion 
		 
		#region 用户日志(UserLogBusinessHandler)的自定义逻辑
			  
			[OperationContract]
	 [FaultContract(typeof(ServiceExceptionDetail))]
		void LogUserLog(UserLog log,out string message);
			 
		#endregion 
		 
		#region 车辆(VehicleBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 仓库(WarehouseBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 库区(WarehouseZoneBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 报警设置(WaringSetBusinessHandler)的自定义逻辑
			 
		#endregion 
		 
		#region 销售出库单(OutInventoryDetailBusinessHandler)的自定义逻辑
			 
		#endregion 

        #region 不合格药品处理
            /// <summary>
            /// 添加药品不合格
            /// </summary>
            /// <param name="value"></param>
            /// <param name="msg"></param>
            /// <returns></returns>
            [OperationContract]
            [FaultContract(typeof(ServiceExceptionDetail))]
            drugsUnqualication GetDrugsUnqualificationByID(Guid ItemID, out string message);

            [OperationContract]
            [FaultContract(typeof(ServiceExceptionDetail))]
            List<drugsUnqualificationQuery> GetDrugsUnqualification(out string message, Guid UID);

            [OperationContract]
            [FaultContract(typeof(ServiceExceptionDetail))]
            List<drugsUnqualication> GetDrugsUnqualificationByCondition(drugsUnqualificationCondition Condition, out string message);

            [OperationContract]
            [FaultContract(typeof(ServiceExceptionDetail))]
            bool addDrugsUnqualityApproval(drugsUnqualication value, Guid approvalFlowTypeID, Guid userID, string changeNote, out string message);

            [OperationContract]
            [FaultContract(typeof(ServiceExceptionDetail))]
            drugsUnqualificationQuery getDrugsUnqualificationQueryByFlowID(Guid FlowID, out string message);
            #endregion

        //获取salesman实体方法        
            [OperationContract]
            [FaultContract(typeof(ServiceExceptionDetail))]
            List<Models.SupplyUnitSalesman> GetSalesManBySupplyUnitID(Guid SupplyUnitID, out string message);
			}
}
