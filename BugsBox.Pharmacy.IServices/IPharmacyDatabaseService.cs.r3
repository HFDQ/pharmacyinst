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
      partial interface IPharmacyDatabaseService
	  {
	  	   
		#region 审批结点

		/// <summary>
        /// 获取实体审批结点
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        ApprovalFlow GetApprovalFlow(Guid id,out string message);   

		/// <summary>
        /// 添加审批结点
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddApprovalFlow(ApprovalFlow value,out string msg);

        /// <summary>
        /// 删除审批结点
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteApprovalFlow(Guid id, out string msg);

        /// <summary>
        /// 保存审批结点
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveApprovalFlow(ApprovalFlow value, out string msg);  

		/// <summary>
        /// 所有记录审批结点
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlow> AllApprovalFlows(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlow> QueryApprovalFlows(int statusfrom,int statusto,string changenote,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlow> QueryPagedApprovalFlows(int statusfrom,int statusto,string changenote,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlow> SearchApprovalFlowsByQueryModel(QueryApprovalFlowModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlow> SearchPagedApprovalFlowsByQueryModel(QueryApprovalFlowModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 审批结点 
		   
		#region 审批结点

		/// <summary>
        /// 获取实体审批结点
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        ApprovalFlowNode GetApprovalFlowNode(Guid id,out string message);   

		/// <summary>
        /// 添加审批结点
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddApprovalFlowNode(ApprovalFlowNode value,out string msg);

        /// <summary>
        /// 删除审批结点
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteApprovalFlowNode(Guid id, out string msg);

        /// <summary>
        /// 保存审批结点
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveApprovalFlowNode(ApprovalFlowNode value, out string msg);  

		/// <summary>
        /// 所有记录审批结点
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlowNode> AllApprovalFlowNodes(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlowNode> QueryApprovalFlowNodes(int orderfrom,int orderto,string name,string decription,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlowNode> QueryPagedApprovalFlowNodes(int orderfrom,int orderto,string name,string decription,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlowNode> SearchApprovalFlowNodesByQueryModel(QueryApprovalFlowNodeModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlowNode> SearchPagedApprovalFlowNodesByQueryModel(QueryApprovalFlowNodeModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 审批结点 
		   
		#region 审批流程类型

		/// <summary>
        /// 获取实体审批流程类型
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        ApprovalFlowType GetApprovalFlowType(Guid id,out string message);   

		/// <summary>
        /// 添加审批流程类型
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddApprovalFlowType(ApprovalFlowType value,out string msg);

        /// <summary>
        /// 删除审批流程类型
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteApprovalFlowType(Guid id, out string msg);

        /// <summary>
        /// 保存审批流程类型
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveApprovalFlowType(ApprovalFlowType value, out string msg);  

		/// <summary>
        /// 所有记录审批流程类型
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlowType> AllApprovalFlowTypes(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlowType> QueryApprovalFlowTypes(string name,string decription,int approvaltypevaluefrom,int approvaltypevalueto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlowType> QueryPagedApprovalFlowTypes(string name,string decription,int approvaltypevaluefrom,int approvaltypevalueto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlowType> SearchApprovalFlowTypesByQueryModel(QueryApprovalFlowTypeModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlowType> SearchPagedApprovalFlowTypesByQueryModel(QueryApprovalFlowTypeModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 审批流程类型 
		   
		#region 审批流程记录

		/// <summary>
        /// 获取实体审批流程记录
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        ApprovalFlowRecord GetApprovalFlowRecord(Guid id,out string message);   

		/// <summary>
        /// 添加审批流程记录
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddApprovalFlowRecord(ApprovalFlowRecord value,out string msg);

        /// <summary>
        /// 删除审批流程记录
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteApprovalFlowRecord(Guid id, out string msg);

        /// <summary>
        /// 保存审批流程记录
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveApprovalFlowRecord(ApprovalFlowRecord value, out string msg);  

		/// <summary>
        /// 所有记录审批流程记录
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlowRecord> AllApprovalFlowRecords(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlowRecord> QueryApprovalFlowRecords(DateTime approvetimefrom,DateTime approvetimeto,string comment,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlowRecord> QueryPagedApprovalFlowRecords(DateTime approvetimefrom,DateTime approvetimeto,string comment,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlowRecord> SearchApprovalFlowRecordsByQueryModel(QueryApprovalFlowRecordModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ApprovalFlowRecord> SearchPagedApprovalFlowRecordsByQueryModel(QueryApprovalFlowRecordModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 审批流程记录 
		   
		#region 单据编号

		/// <summary>
        /// 获取实体单据编号
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        BillDocumentCode GetBillDocumentCode(Guid id,out string message);   

		/// <summary>
        /// 添加单据编号
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddBillDocumentCode(BillDocumentCode value,out string msg);

        /// <summary>
        /// 删除单据编号
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteBillDocumentCode(Guid id, out string msg);

        /// <summary>
        /// 保存单据编号
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveBillDocumentCode(BillDocumentCode value, out string msg);  

		/// <summary>
        /// 所有记录单据编号
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BillDocumentCode> AllBillDocumentCodes(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BillDocumentCode> QueryBillDocumentCodes(bool locked,bool querylocked,bool used,bool queryused,bool canceled,bool querycanceled,string code,int billdocumenttypevaluefrom,int billdocumenttypevalueto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BillDocumentCode> QueryPagedBillDocumentCodes(bool locked,bool querylocked,bool used,bool queryused,bool canceled,bool querycanceled,string code,int billdocumenttypevaluefrom,int billdocumenttypevalueto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BillDocumentCode> SearchBillDocumentCodesByQueryModel(QueryBillDocumentCodeModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BillDocumentCode> SearchPagedBillDocumentCodesByQueryModel(QueryBillDocumentCodeModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 单据编号 
		   
		#region 经营范围

		/// <summary>
        /// 获取实体经营范围
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        BusinessScope GetBusinessScope(Guid id,out string message);   

		/// <summary>
        /// 添加经营范围
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddBusinessScope(BusinessScope value,out string msg);

        /// <summary>
        /// 删除经营范围
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteBusinessScope(Guid id, out string msg);

        /// <summary>
        /// 保存经营范围
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveBusinessScope(BusinessScope value, out string msg);  

		/// <summary>
        /// 所有记录经营范围
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessScope> AllBusinessScopes(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessScope> QueryBusinessScopes(string name,string decription,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessScope> QueryPagedBusinessScopes(string name,string decription,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessScope> SearchBusinessScopesByQueryModel(QueryBusinessScopeModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessScope> SearchPagedBusinessScopesByQueryModel(QueryBusinessScopeModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 经营范围 
		   
		#region 经营范围分类

		/// <summary>
        /// 获取实体经营范围分类
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        BusinessScopeCategory GetBusinessScopeCategory(Guid id,out string message);   

		/// <summary>
        /// 添加经营范围分类
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddBusinessScopeCategory(BusinessScopeCategory value,out string msg);

        /// <summary>
        /// 删除经营范围分类
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteBusinessScopeCategory(Guid id, out string msg);

        /// <summary>
        /// 保存经营范围分类
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveBusinessScopeCategory(BusinessScopeCategory value, out string msg);  

		/// <summary>
        /// 所有记录经营范围分类
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessScopeCategory> AllBusinessScopeCategorys(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessScopeCategory> QueryBusinessScopeCategorys(string name,string decription,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessScopeCategory> QueryPagedBusinessScopeCategorys(string name,string decription,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessScopeCategory> SearchBusinessScopeCategorysByQueryModel(QueryBusinessScopeCategoryModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessScopeCategory> SearchPagedBusinessScopeCategorysByQueryModel(QueryBusinessScopeCategoryModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 经营范围分类 
		   
		#region 经营方式

		/// <summary>
        /// 获取实体经营方式
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        BusinessType GetBusinessType(Guid id,out string message);   

		/// <summary>
        /// 添加经营方式
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddBusinessType(BusinessType value,out string msg);

        /// <summary>
        /// 删除经营方式
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteBusinessType(Guid id, out string msg);

        /// <summary>
        /// 保存经营方式
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveBusinessType(BusinessType value, out string msg);  

		/// <summary>
        /// 所有记录经营方式
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessType> AllBusinessTypes(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessType> QueryBusinessTypes(string decription,string code,string name,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessType> QueryPagedBusinessTypes(string decription,string code,string name,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessType> SearchBusinessTypesByQueryModel(QueryBusinessTypeModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessType> SearchPagedBusinessTypesByQueryModel(QueryBusinessTypeModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 经营方式 
		   
		#region 经营方式的管理要求分类详细

		/// <summary>
        /// 获取实体经营方式的管理要求分类详细
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        BusinessTypeManageCategoryDetail GetBusinessTypeManageCategoryDetail(Guid id,out string message);   

		/// <summary>
        /// 添加经营方式的管理要求分类详细
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddBusinessTypeManageCategoryDetail(BusinessTypeManageCategoryDetail value,out string msg);

        /// <summary>
        /// 删除经营方式的管理要求分类详细
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteBusinessTypeManageCategoryDetail(Guid id, out string msg);

        /// <summary>
        /// 保存经营方式的管理要求分类详细
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveBusinessTypeManageCategoryDetail(BusinessTypeManageCategoryDetail value, out string msg);  

		/// <summary>
        /// 所有记录经营方式的管理要求分类详细
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessTypeManageCategoryDetail> AllBusinessTypeManageCategoryDetails(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessTypeManageCategoryDetail> QueryBusinessTypeManageCategoryDetails(out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessTypeManageCategoryDetail> QueryPagedBusinessTypeManageCategoryDetails(int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessTypeManageCategoryDetail> SearchBusinessTypeManageCategoryDetailsByQueryModel(QueryBusinessTypeManageCategoryDetailModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessTypeManageCategoryDetail> SearchPagedBusinessTypeManageCategoryDetailsByQueryModel(QueryBusinessTypeManageCategoryDetailModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 经营方式的管理要求分类详细 
		   
		#region 商品附加属性

		/// <summary>
        /// 获取实体商品附加属性
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        GoodsAdditionalProperty GetGoodsAdditionalProperty(Guid id,out string message);   

		/// <summary>
        /// 添加商品附加属性
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddGoodsAdditionalProperty(GoodsAdditionalProperty value,out string msg);

        /// <summary>
        /// 删除商品附加属性
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteGoodsAdditionalProperty(Guid id, out string msg);

        /// <summary>
        /// 保存商品附加属性
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveGoodsAdditionalProperty(GoodsAdditionalProperty value, out string msg);  

		/// <summary>
        /// 所有记录商品附加属性
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GoodsAdditionalProperty> AllGoodsAdditionalPropertys(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GoodsAdditionalProperty> QueryGoodsAdditionalPropertys(string carefunction,string putonrecord,DateTime putonrecorddatefrom,DateTime putonrecorddateto,string notsuitablepeople,string suitablepeople,string landmarkingredient,DateTime licensepermissiondatefrom,DateTime licensepermissiondateto,string usageanddosage,string mainingredient,string productaddress,string productaddressenglish,string productcountry,string productcountryenglish,string healthpermit,string regcode,string regproxycompany,string factorynameenglish,string factoryaddress,string factoryaddressenglish,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GoodsAdditionalProperty> QueryPagedGoodsAdditionalPropertys(string carefunction,string putonrecord,DateTime putonrecorddatefrom,DateTime putonrecorddateto,string notsuitablepeople,string suitablepeople,string landmarkingredient,DateTime licensepermissiondatefrom,DateTime licensepermissiondateto,string usageanddosage,string mainingredient,string productaddress,string productaddressenglish,string productcountry,string productcountryenglish,string healthpermit,string regcode,string regproxycompany,string factorynameenglish,string factoryaddress,string factoryaddressenglish,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GoodsAdditionalProperty> SearchGoodsAdditionalPropertysByQueryModel(QueryGoodsAdditionalPropertyModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GoodsAdditionalProperty> SearchPagedGoodsAdditionalPropertysByQueryModel(QueryGoodsAdditionalPropertyModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 商品附加属性 
		   
		#region 采购结算单

		/// <summary>
        /// 获取实体采购结算单
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchaseCashOrder GetPurchaseCashOrder(Guid id,out string message);   

		/// <summary>
        /// 添加采购结算单
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchaseCashOrder(PurchaseCashOrder value,out string msg);

        /// <summary>
        /// 删除采购结算单
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchaseCashOrder(Guid id, out string msg);

        /// <summary>
        /// 保存采购结算单
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchaseCashOrder(PurchaseCashOrder value, out string msg);  

		/// <summary>
        /// 所有记录采购结算单
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseCashOrder> AllPurchaseCashOrders(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseCashOrder> QueryPurchaseCashOrders(string documentnumber,DateTime operatetimefrom,DateTime operatetimeto,int orderstatusvaluefrom,int orderstatusvalueto,string approvaldecription,DateTime paymenttimefrom,DateTime paymenttimeto,decimal paymentedamountfrom,decimal paymentedamountto,decimal paymentingamountfrom,decimal paymentingamountto,decimal paymentamountfrom,decimal paymentamountto,int dealermethodvaluefrom,int dealermethodvalueto,string decription,string relatedorderdocumentnumber,int relatedordertypevaluefrom,int relatedordertypevalueto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseCashOrder> QueryPagedPurchaseCashOrders(string documentnumber,DateTime operatetimefrom,DateTime operatetimeto,int orderstatusvaluefrom,int orderstatusvalueto,string approvaldecription,DateTime paymenttimefrom,DateTime paymenttimeto,decimal paymentedamountfrom,decimal paymentedamountto,decimal paymentingamountfrom,decimal paymentingamountto,decimal paymentamountfrom,decimal paymentamountto,int dealermethodvaluefrom,int dealermethodvalueto,string decription,string relatedorderdocumentnumber,int relatedordertypevaluefrom,int relatedordertypevalueto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseCashOrder> SearchPurchaseCashOrdersByQueryModel(QueryPurchaseCashOrderModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseCashOrder> SearchPagedPurchaseCashOrdersByQueryModel(QueryPurchaseCashOrderModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 采购结算单 
		   
		#region 配送信息

		/// <summary>
        /// 获取实体配送信息
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        Delivery GetDelivery(Guid id,out string message);   

		/// <summary>
        /// 添加配送信息
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDelivery(Delivery value,out string msg);

        /// <summary>
        /// 删除配送信息
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDelivery(Guid id, out string msg);

        /// <summary>
        /// 保存配送信息
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDelivery(Delivery value, out string msg);  

		/// <summary>
        /// 所有记录配送信息
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Delivery> AllDeliverys(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Delivery> QueryDeliverys(DateTime deliverytimefrom,DateTime deliverytimeto,string shippingaddress,string deliveryaddress,string manifestnumber,int drugscountfrom,int drugscountto,int deliverymethodvaluefrom,int deliverymethodvalueto,int transportmethodvaluefrom,int transportmethodvalueto,string principal,string principalphone,string transportcompany,string vehicleinfo,int deliverystatusvaluefrom,int deliverystatusvalueto,string memo,bool isover,bool queryisover,DateTime reservationtimefrom,DateTime reservationtimeto,string reservationno,DateTime acceptedtimefrom,DateTime acceptedtimeto,string acceptedno,DateTime canceledtimefrom,DateTime canceledtimeto,string canceledno,DateTime outedtimefrom,DateTime outedtimeto,string outedno,DateTime signedtimefrom,DateTime signedtimeto,string signedno,DateTime returntimefrom,DateTime returntimeto,string returnno,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Delivery> QueryPagedDeliverys(DateTime deliverytimefrom,DateTime deliverytimeto,string shippingaddress,string deliveryaddress,string manifestnumber,int drugscountfrom,int drugscountto,int deliverymethodvaluefrom,int deliverymethodvalueto,int transportmethodvaluefrom,int transportmethodvalueto,string principal,string principalphone,string transportcompany,string vehicleinfo,int deliverystatusvaluefrom,int deliverystatusvalueto,string memo,bool isover,bool queryisover,DateTime reservationtimefrom,DateTime reservationtimeto,string reservationno,DateTime acceptedtimefrom,DateTime acceptedtimeto,string acceptedno,DateTime canceledtimefrom,DateTime canceledtimeto,string canceledno,DateTime outedtimefrom,DateTime outedtimeto,string outedno,DateTime signedtimefrom,DateTime signedtimeto,string signedno,DateTime returntimefrom,DateTime returntimeto,string returnno,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Delivery> SearchDeliverysByQueryModel(QueryDeliveryModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Delivery> SearchPagedDeliverysByQueryModel(QueryDeliveryModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 配送信息 
		   
		#region 部门

		/// <summary>
        /// 获取实体部门
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        Department GetDepartment(Guid id,out string message);   

		/// <summary>
        /// 添加部门
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDepartment(Department value,out string msg);

        /// <summary>
        /// 删除部门
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDepartment(Guid id, out string msg);

        /// <summary>
        /// 保存部门
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDepartment(Department value, out string msg);  

		/// <summary>
        /// 所有记录部门
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Department> AllDepartments(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Department> QueryDepartments(string name,string decription,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Department> QueryPagedDepartments(string name,string decription,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Department> SearchDepartmentsByQueryModel(QueryDepartmentModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Department> SearchPagedDepartmentsByQueryModel(QueryDepartmentModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 部门 
		   
		#region 区域

		/// <summary>
        /// 获取实体区域
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        District GetDistrict(Guid id,out string message);   

		/// <summary>
        /// 添加区域
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDistrict(District value,out string msg);

        /// <summary>
        /// 删除区域
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDistrict(Guid id, out string msg);

        /// <summary>
        /// 保存区域
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDistrict(District value, out string msg);  

		/// <summary>
        /// 所有记录区域
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<District> AllDistricts(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<District> QueryDistricts(string name,string decription,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<District> QueryPagedDistricts(string name,string decription,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<District> SearchDistrictsByQueryModel(QueryDistrictModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<District> SearchPagedDistrictsByQueryModel(QueryDistrictModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 区域 
		   
		#region 疑问药品

		/// <summary>
        /// 获取实体疑问药品
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        DoubtDrug GetDoubtDrug(Guid id,out string message);   

		/// <summary>
        /// 添加疑问药品
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDoubtDrug(DoubtDrug value,out string msg);

        /// <summary>
        /// 删除疑问药品
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDoubtDrug(Guid id, out string msg);

        /// <summary>
        /// 保存疑问药品
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDoubtDrug(DoubtDrug value, out string msg);  

		/// <summary>
        /// 所有记录疑问药品
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DoubtDrug> AllDoubtDrugs(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DoubtDrug> QueryDoubtDrugs(string jsondruginventoryrecord,string decription,bool handled,bool queryhandled,string handledecription,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DoubtDrug> QueryPagedDoubtDrugs(string jsondruginventoryrecord,string decription,bool handled,bool queryhandled,string handledecription,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DoubtDrug> SearchDoubtDrugsByQueryModel(QueryDoubtDrugModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DoubtDrug> SearchPagedDoubtDrugsByQueryModel(QueryDoubtDrugModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 疑问药品 
		   
		#region 药品批准文号

		/// <summary>
        /// 获取实体药品批准文号
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        DrugApprovalNumber GetDrugApprovalNumber(Guid id,out string message);   

		/// <summary>
        /// 添加药品批准文号
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDrugApprovalNumber(DrugApprovalNumber value,out string msg);

        /// <summary>
        /// 删除药品批准文号
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDrugApprovalNumber(Guid id, out string msg);

        /// <summary>
        /// 保存药品批准文号
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDrugApprovalNumber(DrugApprovalNumber value, out string msg);  

		/// <summary>
        /// 所有记录药品批准文号
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugApprovalNumber> AllDrugApprovalNumbers(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugApprovalNumber> QueryDrugApprovalNumbers(string name,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugApprovalNumber> QueryPagedDrugApprovalNumbers(string name,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugApprovalNumber> SearchDrugApprovalNumbersByQueryModel(QueryDrugApprovalNumberModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugApprovalNumber> SearchPagedDrugApprovalNumbersByQueryModel(QueryDrugApprovalNumberModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 药品批准文号 
		   
		#region 药物分类

		/// <summary>
        /// 获取实体药物分类
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        DrugCategory GetDrugCategory(Guid id,out string message);   

		/// <summary>
        /// 添加药物分类
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDrugCategory(DrugCategory value,out string msg);

        /// <summary>
        /// 删除药物分类
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDrugCategory(Guid id, out string msg);

        /// <summary>
        /// 保存药物分类
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDrugCategory(DrugCategory value, out string msg);  

		/// <summary>
        /// 所有记录药物分类
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugCategory> AllDrugCategorys(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugCategory> QueryDrugCategorys(string name,string decription,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugCategory> QueryPagedDrugCategorys(string name,string decription,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugCategory> SearchDrugCategorysByQueryModel(QueryDrugCategoryModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugCategory> SearchPagedDrugCategorysByQueryModel(QueryDrugCategoryModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 药物分类 
		   
		#region 药物临床分类

		/// <summary>
        /// 获取实体药物临床分类
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        DrugClinicalCategory GetDrugClinicalCategory(Guid id,out string message);   

		/// <summary>
        /// 添加药物临床分类
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDrugClinicalCategory(DrugClinicalCategory value,out string msg);

        /// <summary>
        /// 删除药物临床分类
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDrugClinicalCategory(Guid id, out string msg);

        /// <summary>
        /// 保存药物临床分类
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDrugClinicalCategory(DrugClinicalCategory value, out string msg);  

		/// <summary>
        /// 所有记录药物临床分类
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugClinicalCategory> AllDrugClinicalCategorys(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugClinicalCategory> QueryDrugClinicalCategorys(string name,string decription,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugClinicalCategory> QueryPagedDrugClinicalCategorys(string name,string decription,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugClinicalCategory> SearchDrugClinicalCategorysByQueryModel(QueryDrugClinicalCategoryModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugClinicalCategory> SearchPagedDrugClinicalCategorysByQueryModel(QueryDrugClinicalCategoryModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 药物临床分类 
		   
		#region 剂型

		/// <summary>
        /// 获取实体剂型
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        DictionaryDosage GetDictionaryDosage(Guid id,out string message);   

		/// <summary>
        /// 添加剂型
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDictionaryDosage(DictionaryDosage value,out string msg);

        /// <summary>
        /// 删除剂型
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDictionaryDosage(Guid id, out string msg);

        /// <summary>
        /// 保存剂型
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDictionaryDosage(DictionaryDosage value, out string msg);  

		/// <summary>
        /// 所有记录剂型
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryDosage> AllDictionaryDosages(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryDosage> QueryDictionaryDosages(string name,string decription,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryDosage> QueryPagedDictionaryDosages(string name,string decription,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryDosage> SearchDictionaryDosagesByQueryModel(QueryDictionaryDosageModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryDosage> SearchPagedDictionaryDosagesByQueryModel(QueryDictionaryDosageModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 剂型 
		   
		#region 药品信息

		/// <summary>
        /// 获取实体药品信息
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        DrugInfo GetDrugInfo(Guid id,out string message);

        ///// <summary>WFZ modified
        ///// 获取实体药品信息
        ///// </summary>
        ///// <param name="id"></param>
        ///// <param name="message"></param>
        ///// <returns></returns>
        //[OperationContract]
        //[FaultContract(typeof(ServiceExceptionDetail))]
        //DrugInfo GetGoodsInfoByFlowID(Guid id, out string message); 
        //  //WFZ m end

		/// <summary>
        /// 添加药品信息
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDrugInfo(DrugInfo value,out string msg);

        /// <summary>
        /// 删除药品信息
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDrugInfo(Guid id, out string msg);

        /// <summary>
        /// 保存药品信息
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDrugInfo(DrugInfo value, out string msg);  

		/// <summary>
        /// 所有记录药品信息
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugInfo> AllDrugInfos(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugInfo> QueryDrugInfos(string permitlicensecode,DateTime permitdatefrom,DateTime permitdateto,DateTime permitoutdatefrom,DateTime permitoutdateto,string code,string description,string barcode,string standardcode,string productname,string productenglishname,string productgeneralname,string productothername,string factoryname,string factorynameabbreviation,string piecemealspecification,int piecemealnumberfrom,int piecemealnumberto,decimal pricefrom,decimal priceto,decimal nationalsalepricefrom,decimal nationalsalepriceto,decimal purchasepricefrom,decimal purchasepriceto,decimal salepricefrom,decimal salepriceto,decimal wholesalepricefrom,decimal wholesalepriceto,decimal retailpricefrom,decimal retailpriceto,decimal tagpricefrom,decimal tagpriceto,decimal lowsalepricefrom,decimal lowsalepriceto,decimal limitedlowpricefrom,decimal limitedlowpriceto,decimal limiteduppricefrom,decimal limiteduppriceto,bool ismedicalinsurance,bool queryismedicalinsurance,bool isprescription,bool queryisprescription,bool isimport,bool queryisimport,bool ismainmaintenance,bool queryismainmaintenance,bool isspecialdrugcategory,bool queryisspecialdrugcategory,string specialdrugcategorycode,int validperiodfrom,int validperiodto,string licensepermissionnumber,string performancestandards,string package,int packageamountfrom,int packageamountto,bool isapproval,bool queryisapproval,DateTime approvaldatefrom,DateTime approvaldateto,int maxinventorycountfrom,int maxinventorycountto,int mininventorycountfrom,int mininventorycountto,string origin,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,bool valid,bool queryvalid,string validremark,bool islock,bool queryislock,string lockremark,bool enabled,bool queryenabled,string businessscopecode,string purchasemanagecategorydetailcode,string drugcategorycode,string medicalcategorydetailcode,string drugclinicalcategorycode,string dictionaryuserdefinedtypecode,string drugstoragetypecode,string dictionarymeasurementunitcode,string dictionarydosagecode,string dictionaryspecificationcode,string dictionarypiecemealunitcode,int goodstypevaluefrom,int goodstypevalueto,int approvalstatusvaluefrom,int approvalstatusvalueto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugInfo> QueryPagedDrugInfos(string permitlicensecode,DateTime permitdatefrom,DateTime permitdateto,DateTime permitoutdatefrom,DateTime permitoutdateto,string code,string description,string barcode,string standardcode,string productname,string productenglishname,string productgeneralname,string productothername,string factoryname,string factorynameabbreviation,string piecemealspecification,int piecemealnumberfrom,int piecemealnumberto,decimal pricefrom,decimal priceto,decimal nationalsalepricefrom,decimal nationalsalepriceto,decimal purchasepricefrom,decimal purchasepriceto,decimal salepricefrom,decimal salepriceto,decimal wholesalepricefrom,decimal wholesalepriceto,decimal retailpricefrom,decimal retailpriceto,decimal tagpricefrom,decimal tagpriceto,decimal lowsalepricefrom,decimal lowsalepriceto,decimal limitedlowpricefrom,decimal limitedlowpriceto,decimal limiteduppricefrom,decimal limiteduppriceto,bool ismedicalinsurance,bool queryismedicalinsurance,bool isprescription,bool queryisprescription,bool isimport,bool queryisimport,bool ismainmaintenance,bool queryismainmaintenance,bool isspecialdrugcategory,bool queryisspecialdrugcategory,string specialdrugcategorycode,int validperiodfrom,int validperiodto,string licensepermissionnumber,string performancestandards,string package,int packageamountfrom,int packageamountto,bool isapproval,bool queryisapproval,DateTime approvaldatefrom,DateTime approvaldateto,int maxinventorycountfrom,int maxinventorycountto,int mininventorycountfrom,int mininventorycountto,string origin,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,bool valid,bool queryvalid,string validremark,bool islock,bool queryislock,string lockremark,bool enabled,bool queryenabled,string businessscopecode,string purchasemanagecategorydetailcode,string drugcategorycode,string medicalcategorydetailcode,string drugclinicalcategorycode,string dictionaryuserdefinedtypecode,string drugstoragetypecode,string dictionarymeasurementunitcode,string dictionarydosagecode,string dictionaryspecificationcode,string dictionarypiecemealunitcode,int goodstypevaluefrom,int goodstypevalueto,int approvalstatusvaluefrom,int approvalstatusvalueto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugInfo> SearchDrugInfosByQueryModel(QueryDrugInfoModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugInfo> SearchPagedDrugInfosByQueryModel(QueryDrugInfoModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 药品信息 
		   
		#region 药物库存

		/// <summary>
        /// 获取实体药物库存
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        DrugInventoryRecord GetDrugInventoryRecord(Guid id,out string message);   

		/// <summary>
        /// 添加药物库存
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDrugInventoryRecord(DrugInventoryRecord value,out string msg);

        /// <summary>
        /// 删除药物库存
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDrugInventoryRecord(Guid id, out string msg);

        /// <summary>
        /// 保存药物库存
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDrugInventoryRecord(DrugInventoryRecord value, out string msg);  

		/// <summary>
        /// 所有记录药物库存
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugInventoryRecord> AllDrugInventoryRecords(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugInventoryRecord> QueryDrugInventoryRecords(decimal purchasepriccefrom,decimal purchasepricceto,string batchnumber,DateTime pruductdatefrom,DateTime pruductdateto,DateTime outvaliddatefrom,DateTime outvaliddateto,bool isoutvaliddate,bool queryisoutvaliddate,int ininventorycountfrom,int ininventorycountto,int salescountfrom,int salescountto,int onsalesordercountfrom,int onsalesordercountto,int currentinventorycountfrom,int currentinventorycountto,int retailcountfrom,int retailcountto,int dismantingamountfrom,int dismantingamountto,int retaildismantingamountfrom,int retaildismantingamountto,int onretailcountfrom,int onretailcountto,string decription,int cansalenumfrom,int cansalenumto,bool valid,bool queryvalid,int durginventorytypevaluefrom,int durginventorytypevalueto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugInventoryRecord> QueryPagedDrugInventoryRecords(decimal purchasepriccefrom,decimal purchasepricceto,string batchnumber,DateTime pruductdatefrom,DateTime pruductdateto,DateTime outvaliddatefrom,DateTime outvaliddateto,bool isoutvaliddate,bool queryisoutvaliddate,int ininventorycountfrom,int ininventorycountto,int salescountfrom,int salescountto,int onsalesordercountfrom,int onsalesordercountto,int currentinventorycountfrom,int currentinventorycountto,int retailcountfrom,int retailcountto,int dismantingamountfrom,int dismantingamountto,int retaildismantingamountfrom,int retaildismantingamountto,int onretailcountfrom,int onretailcountto,string decription,int cansalenumfrom,int cansalenumto,bool valid,bool queryvalid,int durginventorytypevaluefrom,int durginventorytypevalueto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugInventoryRecord> SearchDrugInventoryRecordsByQueryModel(QueryDrugInventoryRecordModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugInventoryRecord> SearchPagedDrugInventoryRecordsByQueryModel(QueryDrugInventoryRecordModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 药物库存 
		   
		#region 药品养护记录

		/// <summary>
        /// 获取实体药品养护记录
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        DrugMaintainRecord GetDrugMaintainRecord(Guid id,out string message);   

		/// <summary>
        /// 添加药品养护记录
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDrugMaintainRecord(DrugMaintainRecord value,out string msg);

        /// <summary>
        /// 删除药品养护记录
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDrugMaintainRecord(Guid id, out string msg);

        /// <summary>
        /// 保存药品养护记录
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDrugMaintainRecord(DrugMaintainRecord value, out string msg);  

		/// <summary>
        /// 所有记录药品养护记录
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugMaintainRecord> AllDrugMaintainRecords(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugMaintainRecord> QueryDrugMaintainRecords(string billdocumentno,DateTime expirationdatefrom,DateTime expirationdateto,int drugmaintaintypevaluefrom,int drugmaintaintypevalueto,int completestatefrom,int completestateto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugMaintainRecord> QueryPagedDrugMaintainRecords(string billdocumentno,DateTime expirationdatefrom,DateTime expirationdateto,int drugmaintaintypevaluefrom,int drugmaintaintypevalueto,int completestatefrom,int completestateto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugMaintainRecord> SearchDrugMaintainRecordsByQueryModel(QueryDrugMaintainRecordModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugMaintainRecord> SearchPagedDrugMaintainRecordsByQueryModel(QueryDrugMaintainRecordModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 药品养护记录 
		   
		#region 药品养护记录明细

		/// <summary>
        /// 获取实体药品养护记录明细
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        DrugMaintainRecordDetail GetDrugMaintainRecordDetail(Guid id,out string message);   

		/// <summary>
        /// 添加药品养护记录明细
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDrugMaintainRecordDetail(DrugMaintainRecordDetail value,out string msg);

        /// <summary>
        /// 删除药品养护记录明细
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDrugMaintainRecordDetail(Guid id, out string msg);

        /// <summary>
        /// 保存药品养护记录明细
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDrugMaintainRecordDetail(DrugMaintainRecordDetail value, out string msg);  

		/// <summary>
        /// 所有记录药品养护记录明细
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugMaintainRecordDetail> AllDrugMaintainRecordDetails(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugMaintainRecordDetail> QueryDrugMaintainRecordDetails(string billdocumentno,string productname,string dictionarydosagecode,string dictionaryspecificationcode,int currentinventorycountfrom,int currentinventorycountto,int maintaincountfrom,int maintaincountto,decimal pricefrom,decimal priceto,string origin,string licensepermissionnumber,string batchnumber,DateTime pruductdatefrom,DateTime pruductdateto,DateTime outvaliddatefrom,DateTime outvaliddateto,string manufacturer,string checkqualifiednumber,string checkresult,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugMaintainRecordDetail> QueryPagedDrugMaintainRecordDetails(string billdocumentno,string productname,string dictionarydosagecode,string dictionaryspecificationcode,int currentinventorycountfrom,int currentinventorycountto,int maintaincountfrom,int maintaincountto,decimal pricefrom,decimal priceto,string origin,string licensepermissionnumber,string batchnumber,DateTime pruductdatefrom,DateTime pruductdateto,DateTime outvaliddatefrom,DateTime outvaliddateto,string manufacturer,string checkqualifiednumber,string checkresult,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugMaintainRecordDetail> SearchDrugMaintainRecordDetailsByQueryModel(QueryDrugMaintainRecordDetailModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugMaintainRecordDetail> SearchPagedDrugMaintainRecordDetailsByQueryModel(QueryDrugMaintainRecordDetailModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 药品养护记录明细 
		   
		#region 计量单位

		/// <summary>
        /// 获取实体计量单位
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        DictionaryMeasurementUnit GetDictionaryMeasurementUnit(Guid id,out string message);   

		/// <summary>
        /// 添加计量单位
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDictionaryMeasurementUnit(DictionaryMeasurementUnit value,out string msg);

        /// <summary>
        /// 删除计量单位
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDictionaryMeasurementUnit(Guid id, out string msg);

        /// <summary>
        /// 保存计量单位
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDictionaryMeasurementUnit(DictionaryMeasurementUnit value, out string msg);  

		/// <summary>
        /// 所有记录计量单位
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryMeasurementUnit> AllDictionaryMeasurementUnits(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryMeasurementUnit> QueryDictionaryMeasurementUnits(string name,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryMeasurementUnit> QueryPagedDictionaryMeasurementUnits(string name,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryMeasurementUnit> SearchDictionaryMeasurementUnitsByQueryModel(QueryDictionaryMeasurementUnitModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryMeasurementUnit> SearchPagedDictionaryMeasurementUnitsByQueryModel(QueryDictionaryMeasurementUnitModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 计量单位 
		   
		#region 拆零单位

		/// <summary>
        /// 获取实体拆零单位
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        DictionaryPiecemealUnit GetDictionaryPiecemealUnit(Guid id,out string message);   

		/// <summary>
        /// 添加拆零单位
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDictionaryPiecemealUnit(DictionaryPiecemealUnit value,out string msg);

        /// <summary>
        /// 删除拆零单位
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDictionaryPiecemealUnit(Guid id, out string msg);

        /// <summary>
        /// 保存拆零单位
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDictionaryPiecemealUnit(DictionaryPiecemealUnit value, out string msg);  

		/// <summary>
        /// 所有记录拆零单位
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryPiecemealUnit> AllDictionaryPiecemealUnits(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryPiecemealUnit> QueryDictionaryPiecemealUnits(string name,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryPiecemealUnit> QueryPagedDictionaryPiecemealUnits(string name,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryPiecemealUnit> SearchDictionaryPiecemealUnitsByQueryModel(QueryDictionaryPiecemealUnitModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryPiecemealUnit> SearchPagedDictionaryPiecemealUnitsByQueryModel(QueryDictionaryPiecemealUnitModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 拆零单位 
		   
		#region 药物规格

		/// <summary>
        /// 获取实体药物规格
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        DictionarySpecification GetDictionarySpecification(Guid id,out string message);   

		/// <summary>
        /// 添加药物规格
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDictionarySpecification(DictionarySpecification value,out string msg);

        /// <summary>
        /// 删除药物规格
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDictionarySpecification(Guid id, out string msg);

        /// <summary>
        /// 保存药物规格
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDictionarySpecification(DictionarySpecification value, out string msg);  

		/// <summary>
        /// 所有记录药物规格
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionarySpecification> AllDictionarySpecifications(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionarySpecification> QueryDictionarySpecifications(string name,string code,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionarySpecification> QueryPagedDictionarySpecifications(string name,string code,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionarySpecification> SearchDictionarySpecificationsByQueryModel(QueryDictionarySpecificationModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionarySpecification> SearchPagedDictionarySpecificationsByQueryModel(QueryDictionarySpecificationModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 药物规格 
		   
		#region 储藏方式

		/// <summary>
        /// 获取实体储藏方式
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        DictionaryStorageType GetDictionaryStorageType(Guid id,out string message);   

		/// <summary>
        /// 添加储藏方式
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDictionaryStorageType(DictionaryStorageType value,out string msg);

        /// <summary>
        /// 删除储藏方式
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDictionaryStorageType(Guid id, out string msg);

        /// <summary>
        /// 保存储藏方式
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDictionaryStorageType(DictionaryStorageType value, out string msg);  

		/// <summary>
        /// 所有记录储藏方式
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryStorageType> AllDictionaryStorageTypes(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryStorageType> QueryDictionaryStorageTypes(string name,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryStorageType> QueryPagedDictionaryStorageTypes(string name,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryStorageType> SearchDictionaryStorageTypesByQueryModel(QueryDictionaryStorageTypeModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryStorageType> SearchPagedDictionaryStorageTypesByQueryModel(QueryDictionaryStorageTypeModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 储藏方式 
		   
		#region 用户自定义药物类型

		/// <summary>
        /// 获取实体用户自定义药物类型
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        DictionaryUserDefinedType GetDictionaryUserDefinedType(Guid id,out string message);   

		/// <summary>
        /// 添加用户自定义药物类型
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDictionaryUserDefinedType(DictionaryUserDefinedType value,out string msg);

        /// <summary>
        /// 删除用户自定义药物类型
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDictionaryUserDefinedType(Guid id, out string msg);

        /// <summary>
        /// 保存用户自定义药物类型
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDictionaryUserDefinedType(DictionaryUserDefinedType value, out string msg);  

		/// <summary>
        /// 所有记录用户自定义药物类型
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryUserDefinedType> AllDictionaryUserDefinedTypes(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryUserDefinedType> QueryDictionaryUserDefinedTypes(string name,string decription,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryUserDefinedType> QueryPagedDictionaryUserDefinedTypes(string name,string decription,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryUserDefinedType> SearchDictionaryUserDefinedTypesByQueryModel(QueryDictionaryUserDefinedTypeModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DictionaryUserDefinedType> SearchPagedDictionaryUserDefinedTypesByQueryModel(QueryDictionaryUserDefinedTypeModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 用户自定义药物类型 
		   
		#region 授权书

		/// <summary>
        /// 获取实体授权书
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        AuthorizationDoc GetAuthorizationDoc(Guid id,out string message);   

		/// <summary>
        /// 添加授权书
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddAuthorizationDoc(AuthorizationDoc value,out string msg);

        /// <summary>
        /// 删除授权书
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteAuthorizationDoc(Guid id, out string msg);

        /// <summary>
        /// 保存授权书
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveAuthorizationDoc(AuthorizationDoc value, out string msg);  

		/// <summary>
        /// 所有记录授权书
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<AuthorizationDoc> AllAuthorizationDocs(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<AuthorizationDoc> QueryAuthorizationDocs(string docfile,string description,DateTime outdatefrom,DateTime outdateto,bool valid,bool queryvalid,bool isoutdate,bool queryisoutdate,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<AuthorizationDoc> QueryPagedAuthorizationDocs(string docfile,string description,DateTime outdatefrom,DateTime outdateto,bool valid,bool queryvalid,bool isoutdate,bool queryisoutdate,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<AuthorizationDoc> SearchAuthorizationDocsByQueryModel(QueryAuthorizationDocModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<AuthorizationDoc> SearchPagedAuthorizationDocsByQueryModel(QueryAuthorizationDocModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 授权书 
		   
		#region 药品养护设置

		/// <summary>
        /// 获取实体药品养护设置
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        DrugMaintainSet GetDrugMaintainSet(Guid id,out string message);   

		/// <summary>
        /// 添加药品养护设置
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDrugMaintainSet(DrugMaintainSet value,out string msg);

        /// <summary>
        /// 删除药品养护设置
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDrugMaintainSet(Guid id, out string msg);

        /// <summary>
        /// 保存药品养护设置
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDrugMaintainSet(DrugMaintainSet value, out string msg);  

		/// <summary>
        /// 所有记录药品养护设置
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugMaintainSet> AllDrugMaintainSets(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugMaintainSet> QueryDrugMaintainSets(int drugmaintaintypevaluefrom,int drugmaintaintypevalueto,string name,int dayfrom,int dayto,DateTime startdatefrom,DateTime startdateto,int remindbeforedayfrom,int remindbeforedayto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugMaintainSet> QueryPagedDrugMaintainSets(int drugmaintaintypevaluefrom,int drugmaintaintypevalueto,string name,int dayfrom,int dayto,DateTime startdatefrom,DateTime startdateto,int remindbeforedayfrom,int remindbeforedayto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugMaintainSet> SearchDrugMaintainSetsByQueryModel(QueryDrugMaintainSetModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<DrugMaintainSet> SearchPagedDrugMaintainSetsByQueryModel(QueryDrugMaintainSetModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 药品养护设置 
		   
		#region 员工

		/// <summary>
        /// 获取实体员工
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        Employee GetEmployee(Guid id,out string message);   

		/// <summary>
        /// 添加员工
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddEmployee(Employee value,out string msg);

        /// <summary>
        /// 删除员工
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteEmployee(Guid id, out string msg);

        /// <summary>
        /// 保存员工
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveEmployee(Employee value, out string msg);  

		/// <summary>
        /// 所有记录员工
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Employee> AllEmployees(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Employee> QueryEmployees(DateTime outdatefrom,DateTime outdateto,string number,string name,string pinyin,string gender,string identityno,string phone,string email,string address,string rank,string education,string duty,string specility,int employstatusvaluefrom,int employstatusvalueto,bool enabled,bool queryenabled,int pharmaciststitletypevaluefrom,int pharmaciststitletypevalueto,string cardno,int pharmacistsqualificationvaluefrom,int pharmacistsqualificationvalueto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Employee> QueryPagedEmployees(DateTime outdatefrom,DateTime outdateto,string number,string name,string pinyin,string gender,string identityno,string phone,string email,string address,string rank,string education,string duty,string specility,int employstatusvaluefrom,int employstatusvalueto,bool enabled,bool queryenabled,int pharmaciststitletypevaluefrom,int pharmaciststitletypevalueto,string cardno,int pharmacistsqualificationvaluefrom,int pharmacistsqualificationvalueto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Employee> SearchEmployeesByQueryModel(QueryEmployeeModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Employee> SearchPagedEmployeesByQueryModel(QueryEmployeeModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 员工 
		   
		#region GMSP证书规定的经营范围

		/// <summary>
        /// 获取实体GMSP证书规定的经营范围
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        GMSPLicenseBusinessScope GetGMSPLicenseBusinessScope(Guid id,out string message);   

		/// <summary>
        /// 添加GMSP证书规定的经营范围
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddGMSPLicenseBusinessScope(GMSPLicenseBusinessScope value,out string msg);

        /// <summary>
        /// 删除GMSP证书规定的经营范围
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteGMSPLicenseBusinessScope(Guid id, out string msg);

        /// <summary>
        /// 保存GMSP证书规定的经营范围
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveGMSPLicenseBusinessScope(GMSPLicenseBusinessScope value, out string msg);  

		/// <summary>
        /// 所有记录GMSP证书规定的经营范围
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GMSPLicenseBusinessScope> AllGMSPLicenseBusinessScopes(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GMSPLicenseBusinessScope> QueryGMSPLicenseBusinessScopes(out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GMSPLicenseBusinessScope> QueryPagedGMSPLicenseBusinessScopes(int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GMSPLicenseBusinessScope> SearchGMSPLicenseBusinessScopesByQueryModel(QueryGMSPLicenseBusinessScopeModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GMSPLicenseBusinessScope> SearchPagedGMSPLicenseBusinessScopesByQueryModel(QueryGMSPLicenseBusinessScopeModel qModel,int index,int size,out PagerInfo pager); 

		#endregion GMSP证书规定的经营范围 
		   
		#region 库存

		/// <summary>
        /// 获取实体库存
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        InventoryRecord GetInventoryRecord(Guid id,out string message);   

		/// <summary>
        /// 添加库存
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddInventoryRecord(InventoryRecord value,out string msg);

        /// <summary>
        /// 删除库存
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteInventoryRecord(Guid id, out string msg);

        /// <summary>
        /// 保存库存
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveInventoryRecord(InventoryRecord value, out string msg);  

		/// <summary>
        /// 所有记录库存
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<InventoryRecord> AllInventoryRecords(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<InventoryRecord> QueryInventoryRecords(int maxinventorycountfrom,int maxinventorycountto,int mininventorycountfrom,int mininventorycountto,int currentinventorycountfrom,int currentinventorycountto,int salescountfrom,int salescountto,int onsalesordercountfrom,int onsalesordercountto,int retailcountfrom,int retailcountto,int onretailcountfrom,int onretailcountto,int dismantingamountfrom,int dismantingamountto,int retaildismantingamountfrom,int retaildismantingamountto,string druginfocode,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<InventoryRecord> QueryPagedInventoryRecords(int maxinventorycountfrom,int maxinventorycountto,int mininventorycountfrom,int mininventorycountto,int currentinventorycountfrom,int currentinventorycountto,int salescountfrom,int salescountto,int onsalesordercountfrom,int onsalesordercountto,int retailcountfrom,int retailcountto,int onretailcountfrom,int onretailcountto,int dismantingamountfrom,int dismantingamountto,int retaildismantingamountfrom,int retaildismantingamountto,string druginfocode,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<InventoryRecord> SearchInventoryRecordsByQueryModel(QueryInventoryRecordModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<InventoryRecord> SearchPagedInventoryRecordsByQueryModel(QueryInventoryRecordModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 库存 
		   
		#region 生产厂家 

		/// <summary>
        /// 获取实体生产厂家 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        Manufacturer GetManufacturer(Guid id,out string message);   

		/// <summary>
        /// 添加生产厂家 
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddManufacturer(Manufacturer value,out string msg);

        /// <summary>
        /// 删除生产厂家 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteManufacturer(Guid id, out string msg);

        /// <summary>
        /// 保存生产厂家 
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveManufacturer(Manufacturer value, out string msg);  

		/// <summary>
        /// 所有记录生产厂家 
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Manufacturer> AllManufacturers(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Manufacturer> QueryManufacturers(string name,string shortpinyin,string decription,string code,bool enabled,bool queryenabled,string address,string tel,string contact,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Manufacturer> QueryPagedManufacturers(string name,string shortpinyin,string decription,string code,bool enabled,bool queryenabled,string address,string tel,string contact,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Manufacturer> SearchManufacturersByQueryModel(QueryManufacturerModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Manufacturer> SearchPagedManufacturersByQueryModel(QueryManufacturerModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 生产厂家  
		   
		#region 包装材质

		/// <summary>
        /// 获取实体包装材质
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PackagingMaterial GetPackagingMaterial(Guid id,out string message);   

		/// <summary>
        /// 添加包装材质
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPackagingMaterial(PackagingMaterial value,out string msg);

        /// <summary>
        /// 删除包装材质
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePackagingMaterial(Guid id, out string msg);

        /// <summary>
        /// 保存包装材质
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePackagingMaterial(PackagingMaterial value, out string msg);  

		/// <summary>
        /// 所有记录包装材质
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PackagingMaterial> AllPackagingMaterials(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PackagingMaterial> QueryPackagingMaterials(string name,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PackagingMaterial> QueryPagedPackagingMaterials(string name,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PackagingMaterial> SearchPackagingMaterialsByQueryModel(QueryPackagingMaterialModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PackagingMaterial> SearchPagedPackagingMaterialsByQueryModel(QueryPackagingMaterialModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 包装材质 
		   
		#region 包装

		/// <summary>
        /// 获取实体包装
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PackagingUnit GetPackagingUnit(Guid id,out string message);   

		/// <summary>
        /// 添加包装
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPackagingUnit(PackagingUnit value,out string msg);

        /// <summary>
        /// 删除包装
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePackagingUnit(Guid id, out string msg);

        /// <summary>
        /// 保存包装
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePackagingUnit(PackagingUnit value, out string msg);  

		/// <summary>
        /// 所有记录包装
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PackagingUnit> AllPackagingUnits(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PackagingUnit> QueryPackagingUnits(string name,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PackagingUnit> QueryPagedPackagingUnits(string name,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PackagingUnit> SearchPackagingUnitsByQueryModel(QueryPackagingUnitModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PackagingUnit> SearchPagedPackagingUnitsByQueryModel(QueryPackagingUnitModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 包装 
		   
		#region 付款方式

		/// <summary>
        /// 获取实体付款方式
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PaymentMethod GetPaymentMethod(Guid id,out string message);   

		/// <summary>
        /// 添加付款方式
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPaymentMethod(PaymentMethod value,out string msg);

        /// <summary>
        /// 删除付款方式
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePaymentMethod(Guid id, out string msg);

        /// <summary>
        /// 保存付款方式
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePaymentMethod(PaymentMethod value, out string msg);  

		/// <summary>
        /// 所有记录付款方式
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PaymentMethod> AllPaymentMethods(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PaymentMethod> QueryPaymentMethods(string name,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PaymentMethod> QueryPagedPaymentMethods(string name,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PaymentMethod> SearchPaymentMethodsByQueryModel(QueryPaymentMethodModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PaymentMethod> SearchPagedPaymentMethodsByQueryModel(QueryPaymentMethodModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 付款方式 
		   
		#region GSP证书

		/// <summary>
        /// 获取实体GSP证书
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        GSPLicense GetGSPLicense(Guid id,out string message);   

		/// <summary>
        /// 添加GSP证书
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddGSPLicense(GSPLicense value,out string msg);

        /// <summary>
        /// 删除GSP证书
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteGSPLicense(Guid id, out string msg);

        /// <summary>
        /// 保存GSP证书
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveGSPLicense(GSPLicense value, out string msg);  

		/// <summary>
        /// 所有记录GSP证书
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GSPLicense> AllGSPLicenses(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GSPLicense> QueryGSPLicenses(string legalperson,string header,string qualityheader,string warehouseaddress,string name,string decription,string code,bool enabled,bool queryenabled,string unitname,string regaddress,string licensecode,DateTime startdatefrom,DateTime startdateto,DateTime outdatefrom,DateTime outdateto,DateTime issuancedatefrom,DateTime issuancedateto,string issuanceorg,bool valid,bool queryvalid,int licensetypevaluefrom,int licensetypevalueto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GSPLicense> QueryPagedGSPLicenses(string legalperson,string header,string qualityheader,string warehouseaddress,string name,string decription,string code,bool enabled,bool queryenabled,string unitname,string regaddress,string licensecode,DateTime startdatefrom,DateTime startdateto,DateTime outdatefrom,DateTime outdateto,DateTime issuancedatefrom,DateTime issuancedateto,string issuanceorg,bool valid,bool queryvalid,int licensetypevaluefrom,int licensetypevalueto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GSPLicense> SearchGSPLicensesByQueryModel(QueryGSPLicenseModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GSPLicense> SearchPagedGSPLicensesByQueryModel(QueryGSPLicenseModel qModel,int index,int size,out PagerInfo pager); 

		#endregion GSP证书 
		   
		#region GMP证书

		/// <summary>
        /// 获取实体GMP证书
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        GMPLicense GetGMPLicense(Guid id,out string message);   

		/// <summary>
        /// 添加GMP证书
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddGMPLicense(GMPLicense value,out string msg);

        /// <summary>
        /// 删除GMP证书
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteGMPLicense(Guid id, out string msg);

        /// <summary>
        /// 保存GMP证书
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveGMPLicense(GMPLicense value, out string msg);  

		/// <summary>
        /// 所有记录GMP证书
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GMPLicense> AllGMPLicenses(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GMPLicense> QueryGMPLicenses(string certificationscope,string name,string decription,string code,bool enabled,bool queryenabled,string unitname,string regaddress,string licensecode,DateTime startdatefrom,DateTime startdateto,DateTime outdatefrom,DateTime outdateto,DateTime issuancedatefrom,DateTime issuancedateto,string issuanceorg,bool valid,bool queryvalid,int licensetypevaluefrom,int licensetypevalueto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GMPLicense> QueryPagedGMPLicenses(string certificationscope,string name,string decription,string code,bool enabled,bool queryenabled,string unitname,string regaddress,string licensecode,DateTime startdatefrom,DateTime startdateto,DateTime outdatefrom,DateTime outdateto,DateTime issuancedatefrom,DateTime issuancedateto,string issuanceorg,bool valid,bool queryvalid,int licensetypevaluefrom,int licensetypevalueto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GMPLicense> SearchGMPLicensesByQueryModel(QueryGMPLicenseModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<GMPLicense> SearchPagedGMPLicensesByQueryModel(QueryGMPLicenseModel qModel,int index,int size,out PagerInfo pager); 

		#endregion GMP证书 
		   
		#region 营业执照

		/// <summary>
        /// 获取实体营业执照
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        BusinessLicense GetBusinessLicense(Guid id,out string message);   

		/// <summary>
        /// 添加营业执照
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddBusinessLicense(BusinessLicense value,out string msg);

        /// <summary>
        /// 删除营业执照
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteBusinessLicense(Guid id, out string msg);

        /// <summary>
        /// 保存营业执照
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveBusinessLicense(BusinessLicense value, out string msg);  

		/// <summary>
        /// 所有记录营业执照
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessLicense> AllBusinessLicenses(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessLicense> QueryBusinessLicenses(int registeredcapitalfrom,int registeredcapitalto,int paidincapitalfrom,int paidincapitalto,string corporatenature,string businessscope,DateTime establishmentdatefrom,DateTime establishmentdateto,string inspectiondate,string name,string decription,string code,bool enabled,bool queryenabled,string unitname,string regaddress,string licensecode,DateTime startdatefrom,DateTime startdateto,DateTime outdatefrom,DateTime outdateto,DateTime issuancedatefrom,DateTime issuancedateto,string issuanceorg,bool valid,bool queryvalid,int licensetypevaluefrom,int licensetypevalueto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessLicense> QueryPagedBusinessLicenses(int registeredcapitalfrom,int registeredcapitalto,int paidincapitalfrom,int paidincapitalto,string corporatenature,string businessscope,DateTime establishmentdatefrom,DateTime establishmentdateto,string inspectiondate,string name,string decription,string code,bool enabled,bool queryenabled,string unitname,string regaddress,string licensecode,DateTime startdatefrom,DateTime startdateto,DateTime outdatefrom,DateTime outdateto,DateTime issuancedatefrom,DateTime issuancedateto,string issuanceorg,bool valid,bool queryvalid,int licensetypevaluefrom,int licensetypevalueto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessLicense> SearchBusinessLicensesByQueryModel(QueryBusinessLicenseModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<BusinessLicense> SearchPagedBusinessLicensesByQueryModel(QueryBusinessLicenseModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 营业执照 
		   
		#region 药品生产许可证

		/// <summary>
        /// 获取实体药品生产许可证
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        MedicineProductionLicense GetMedicineProductionLicense(Guid id,out string message);   

		/// <summary>
        /// 添加药品生产许可证
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddMedicineProductionLicense(MedicineProductionLicense value,out string msg);

        /// <summary>
        /// 删除药品生产许可证
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteMedicineProductionLicense(Guid id, out string msg);

        /// <summary>
        /// 保存药品生产许可证
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveMedicineProductionLicense(MedicineProductionLicense value, out string msg);  

		/// <summary>
        /// 所有记录药品生产许可证
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicineProductionLicense> AllMedicineProductionLicenses(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicineProductionLicense> QueryMedicineProductionLicenses(string legalperson,string header,string productaddress,string corporatenature,string categorycode,string productscope,string name,string decription,string code,bool enabled,bool queryenabled,string unitname,string regaddress,string licensecode,DateTime startdatefrom,DateTime startdateto,DateTime outdatefrom,DateTime outdateto,DateTime issuancedatefrom,DateTime issuancedateto,string issuanceorg,bool valid,bool queryvalid,int licensetypevaluefrom,int licensetypevalueto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicineProductionLicense> QueryPagedMedicineProductionLicenses(string legalperson,string header,string productaddress,string corporatenature,string categorycode,string productscope,string name,string decription,string code,bool enabled,bool queryenabled,string unitname,string regaddress,string licensecode,DateTime startdatefrom,DateTime startdateto,DateTime outdatefrom,DateTime outdateto,DateTime issuancedatefrom,DateTime issuancedateto,string issuanceorg,bool valid,bool queryvalid,int licensetypevaluefrom,int licensetypevalueto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicineProductionLicense> SearchMedicineProductionLicensesByQueryModel(QueryMedicineProductionLicenseModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicineProductionLicense> SearchPagedMedicineProductionLicensesByQueryModel(QueryMedicineProductionLicenseModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 药品生产许可证 
		   
		#region 药品经营许可证

		/// <summary>
        /// 获取实体药品经营许可证
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        MedicineBusinessLicense GetMedicineBusinessLicense(Guid id,out string message);   

		/// <summary>
        /// 添加药品经营许可证
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddMedicineBusinessLicense(MedicineBusinessLicense value,out string msg);

        /// <summary>
        /// 删除药品经营许可证
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteMedicineBusinessLicense(Guid id, out string msg);

        /// <summary>
        /// 保存药品经营许可证
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveMedicineBusinessLicense(MedicineBusinessLicense value, out string msg);  

		/// <summary>
        /// 所有记录药品经营许可证
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicineBusinessLicense> AllMedicineBusinessLicenses(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicineBusinessLicense> QueryMedicineBusinessLicenses(string legalperson,string header,string qualityheader,string warehouseaddress,string businessscope,string name,string decription,string code,bool enabled,bool queryenabled,string unitname,string regaddress,string licensecode,DateTime startdatefrom,DateTime startdateto,DateTime outdatefrom,DateTime outdateto,DateTime issuancedatefrom,DateTime issuancedateto,string issuanceorg,bool valid,bool queryvalid,int licensetypevaluefrom,int licensetypevalueto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicineBusinessLicense> QueryPagedMedicineBusinessLicenses(string legalperson,string header,string qualityheader,string warehouseaddress,string businessscope,string name,string decription,string code,bool enabled,bool queryenabled,string unitname,string regaddress,string licensecode,DateTime startdatefrom,DateTime startdateto,DateTime outdatefrom,DateTime outdateto,DateTime issuancedatefrom,DateTime issuancedateto,string issuanceorg,bool valid,bool queryvalid,int licensetypevaluefrom,int licensetypevalueto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicineBusinessLicense> SearchMedicineBusinessLicensesByQueryModel(QueryMedicineBusinessLicenseModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicineBusinessLicense> SearchPagedMedicineBusinessLicensesByQueryModel(QueryMedicineBusinessLicenseModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 药品经营许可证 
		   
		#region 器械经营许可证

		/// <summary>
        /// 获取实体器械经营许可证
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        InstrumentsBusinessLicense GetInstrumentsBusinessLicense(Guid id,out string message);   

		/// <summary>
        /// 添加器械经营许可证
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddInstrumentsBusinessLicense(InstrumentsBusinessLicense value,out string msg);

        /// <summary>
        /// 删除器械经营许可证
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteInstrumentsBusinessLicense(Guid id, out string msg);

        /// <summary>
        /// 保存器械经营许可证
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveInstrumentsBusinessLicense(InstrumentsBusinessLicense value, out string msg);  

		/// <summary>
        /// 所有记录器械经营许可证
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<InstrumentsBusinessLicense> AllInstrumentsBusinessLicenses(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<InstrumentsBusinessLicense> QueryInstrumentsBusinessLicenses(string legalperson,string header,string qualityheader,string warehouseaddress,string businessscope,string name,string decription,string code,bool enabled,bool queryenabled,string unitname,string regaddress,string licensecode,DateTime startdatefrom,DateTime startdateto,DateTime outdatefrom,DateTime outdateto,DateTime issuancedatefrom,DateTime issuancedateto,string issuanceorg,bool valid,bool queryvalid,int licensetypevaluefrom,int licensetypevalueto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<InstrumentsBusinessLicense> QueryPagedInstrumentsBusinessLicenses(string legalperson,string header,string qualityheader,string warehouseaddress,string businessscope,string name,string decription,string code,bool enabled,bool queryenabled,string unitname,string regaddress,string licensecode,DateTime startdatefrom,DateTime startdateto,DateTime outdatefrom,DateTime outdateto,DateTime issuancedatefrom,DateTime issuancedateto,string issuanceorg,bool valid,bool queryvalid,int licensetypevaluefrom,int licensetypevalueto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<InstrumentsBusinessLicense> SearchInstrumentsBusinessLicensesByQueryModel(QueryInstrumentsBusinessLicenseModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<InstrumentsBusinessLicense> SearchPagedInstrumentsBusinessLicensesByQueryModel(QueryInstrumentsBusinessLicenseModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 器械经营许可证 
		   
		#region 器械生产许可证

		/// <summary>
        /// 获取实体器械生产许可证
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        InstrumentsProductionLicense GetInstrumentsProductionLicense(Guid id,out string message);   

		/// <summary>
        /// 添加器械生产许可证
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddInstrumentsProductionLicense(InstrumentsProductionLicense value,out string msg);

        /// <summary>
        /// 删除器械生产许可证
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteInstrumentsProductionLicense(Guid id, out string msg);

        /// <summary>
        /// 保存器械生产许可证
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveInstrumentsProductionLicense(InstrumentsProductionLicense value, out string msg);  

		/// <summary>
        /// 所有记录器械生产许可证
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<InstrumentsProductionLicense> AllInstrumentsProductionLicenses(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<InstrumentsProductionLicense> QueryInstrumentsProductionLicenses(string legalperson,string header,string productaddress,string productscope,string name,string decription,string code,bool enabled,bool queryenabled,string unitname,string regaddress,string licensecode,DateTime startdatefrom,DateTime startdateto,DateTime outdatefrom,DateTime outdateto,DateTime issuancedatefrom,DateTime issuancedateto,string issuanceorg,bool valid,bool queryvalid,int licensetypevaluefrom,int licensetypevalueto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<InstrumentsProductionLicense> QueryPagedInstrumentsProductionLicenses(string legalperson,string header,string productaddress,string productscope,string name,string decription,string code,bool enabled,bool queryenabled,string unitname,string regaddress,string licensecode,DateTime startdatefrom,DateTime startdateto,DateTime outdatefrom,DateTime outdateto,DateTime issuancedatefrom,DateTime issuancedateto,string issuanceorg,bool valid,bool queryvalid,int licensetypevaluefrom,int licensetypevalueto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<InstrumentsProductionLicense> SearchInstrumentsProductionLicensesByQueryModel(QueryInstrumentsProductionLicenseModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<InstrumentsProductionLicense> SearchPagedInstrumentsProductionLicensesByQueryModel(QueryInstrumentsProductionLicenseModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 器械生产许可证 
		   
		#region 医疗分类

		/// <summary>
        /// 获取实体医疗分类
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        MedicalCategory GetMedicalCategory(Guid id,out string message);   

		/// <summary>
        /// 添加医疗分类
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddMedicalCategory(MedicalCategory value,out string msg);

        /// <summary>
        /// 删除医疗分类
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteMedicalCategory(Guid id, out string msg);

        /// <summary>
        /// 保存医疗分类
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveMedicalCategory(MedicalCategory value, out string msg);  

		/// <summary>
        /// 所有记录医疗分类
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicalCategory> AllMedicalCategorys(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicalCategory> QueryMedicalCategorys(string name,string decription,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicalCategory> QueryPagedMedicalCategorys(string name,string decription,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicalCategory> SearchMedicalCategorysByQueryModel(QueryMedicalCategoryModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicalCategory> SearchPagedMedicalCategorysByQueryModel(QueryMedicalCategoryModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 医疗分类 
		   
		#region 医疗详细分类

		/// <summary>
        /// 获取实体医疗详细分类
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        MedicalCategoryDetail GetMedicalCategoryDetail(Guid id,out string message);   

		/// <summary>
        /// 添加医疗详细分类
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddMedicalCategoryDetail(MedicalCategoryDetail value,out string msg);

        /// <summary>
        /// 删除医疗详细分类
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteMedicalCategoryDetail(Guid id, out string msg);

        /// <summary>
        /// 保存医疗详细分类
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveMedicalCategoryDetail(MedicalCategoryDetail value, out string msg);  

		/// <summary>
        /// 所有记录医疗详细分类
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicalCategoryDetail> AllMedicalCategoryDetails(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicalCategoryDetail> QueryMedicalCategoryDetails(string name,string decription,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicalCategoryDetail> QueryPagedMedicalCategoryDetails(string name,string decription,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicalCategoryDetail> SearchMedicalCategoryDetailsByQueryModel(QueryMedicalCategoryDetailModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<MedicalCategoryDetail> SearchPagedMedicalCategoryDetailsByQueryModel(QueryMedicalCategoryDetailModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 医疗详细分类 
		   
		#region 功能模块

		/// <summary>
        /// 获取实体功能模块
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        Module GetModule(Guid id,out string message);   

		/// <summary>
        /// 添加功能模块
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddModule(Module value,out string msg);

        /// <summary>
        /// 删除功能模块
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteModule(Guid id, out string msg);

        /// <summary>
        /// 保存功能模块
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveModule(Module value, out string msg);  

		/// <summary>
        /// 所有记录功能模块
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Module> AllModules(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Module> QueryModules(string name,string description,string authkey,int indexfrom,int indexto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Module> QueryPagedModules(string name,string description,string authkey,int indexfrom,int indexto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Module> SearchModulesByQueryModel(QueryModuleModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Module> SearchPagedModulesByQueryModel(QueryModuleModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 功能模块 
		   
		#region 功能模块分类

		/// <summary>
        /// 获取实体功能模块分类
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        ModuleCatetory GetModuleCatetory(Guid id,out string message);   

		/// <summary>
        /// 添加功能模块分类
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddModuleCatetory(ModuleCatetory value,out string msg);

        /// <summary>
        /// 删除功能模块分类
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteModuleCatetory(Guid id, out string msg);

        /// <summary>
        /// 保存功能模块分类
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveModuleCatetory(ModuleCatetory value, out string msg);  

		/// <summary>
        /// 所有记录功能模块分类
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ModuleCatetory> AllModuleCatetorys(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ModuleCatetory> QueryModuleCatetorys(string name,string description,int indexfrom,int indexto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ModuleCatetory> QueryPagedModuleCatetorys(string name,string description,int indexfrom,int indexto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ModuleCatetory> SearchModuleCatetorysByQueryModel(QueryModuleCatetoryModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ModuleCatetory> SearchPagedModuleCatetorysByQueryModel(QueryModuleCatetoryModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 功能模块分类 
		   
		#region 功能模块与角色的关联

		/// <summary>
        /// 获取实体功能模块与角色的关联
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        ModuleWithRole GetModuleWithRole(Guid id,out string message);   

		/// <summary>
        /// 添加功能模块与角色的关联
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddModuleWithRole(ModuleWithRole value,out string msg);

        /// <summary>
        /// 删除功能模块与角色的关联
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteModuleWithRole(Guid id, out string msg);

        /// <summary>
        /// 保存功能模块与角色的关联
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveModuleWithRole(ModuleWithRole value, out string msg);  

		/// <summary>
        /// 所有记录功能模块与角色的关联
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ModuleWithRole> AllModuleWithRoles(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ModuleWithRole> QueryModuleWithRoles(DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ModuleWithRole> QueryPagedModuleWithRoles(DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ModuleWithRole> SearchModuleWithRolesByQueryModel(QueryModuleWithRoleModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<ModuleWithRole> SearchPagedModuleWithRolesByQueryModel(QueryModuleWithRoleModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 功能模块与角色的关联 
		   
		#region 文件

		/// <summary>
        /// 获取实体文件
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PharmacyFile GetPharmacyFile(Guid id,out string message);   

		/// <summary>
        /// 添加文件
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPharmacyFile(PharmacyFile value,out string msg);

        /// <summary>
        /// 删除文件
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePharmacyFile(Guid id, out string msg);

        /// <summary>
        /// 保存文件
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePharmacyFile(PharmacyFile value, out string msg);  

		/// <summary>
        /// 所有记录文件
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PharmacyFile> AllPharmacyFiles(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PharmacyFile> QueryPharmacyFiles(DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string filename,string extension,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PharmacyFile> QueryPagedPharmacyFiles(DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string filename,string extension,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PharmacyFile> SearchPharmacyFilesByQueryModel(QueryPharmacyFileModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PharmacyFile> SearchPagedPharmacyFilesByQueryModel(QueryPharmacyFileModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 文件 
		   
		#region 采购合同

		/// <summary>
        /// 获取实体采购合同
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchaseAgreement GetPurchaseAgreement(Guid id,out string message);   

		/// <summary>
        /// 添加采购合同
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchaseAgreement(PurchaseAgreement value,out string msg);

        /// <summary>
        /// 删除采购合同
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchaseAgreement(Guid id, out string msg);

        /// <summary>
        /// 保存采购合同
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchaseAgreement(PurchaseAgreement value, out string msg);  

		/// <summary>
        /// 所有记录采购合同
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseAgreement> AllPurchaseAgreements(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseAgreement> QueryPurchaseAgreements(out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseAgreement> QueryPagedPurchaseAgreements(int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseAgreement> SearchPurchaseAgreementsByQueryModel(QueryPurchaseAgreementModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseAgreement> SearchPagedPurchaseAgreementsByQueryModel(QueryPurchaseAgreementModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 采购合同 
		   
		#region 验收记录

		/// <summary>
        /// 获取实体验收记录
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchaseCheckingOrder GetPurchaseCheckingOrder(Guid id,out string message);   

		/// <summary>
        /// 添加验收记录
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchaseCheckingOrder(PurchaseCheckingOrder value,out string msg);

        /// <summary>
        /// 删除验收记录
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchaseCheckingOrder(Guid id, out string msg);

        /// <summary>
        /// 保存验收记录
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchaseCheckingOrder(PurchaseCheckingOrder value, out string msg);  

		/// <summary>
        /// 所有记录验收记录
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseCheckingOrder> AllPurchaseCheckingOrders(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseCheckingOrder> QueryPurchaseCheckingOrders(string documentnumber,DateTime operatetimefrom,DateTime operatetimeto,int orderstatusvaluefrom,int orderstatusvalueto,string decription,string relatedorderdocumentnumber,int relatedordertypevaluefrom,int relatedordertypevalueto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseCheckingOrder> QueryPagedPurchaseCheckingOrders(string documentnumber,DateTime operatetimefrom,DateTime operatetimeto,int orderstatusvaluefrom,int orderstatusvalueto,string decription,string relatedorderdocumentnumber,int relatedordertypevaluefrom,int relatedordertypevalueto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseCheckingOrder> SearchPurchaseCheckingOrdersByQueryModel(QueryPurchaseCheckingOrderModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseCheckingOrder> SearchPagedPurchaseCheckingOrdersByQueryModel(QueryPurchaseCheckingOrderModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 验收记录 
		   
		#region 采购到货验收

		/// <summary>
        /// 获取实体采购到货验收
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchaseCheckingOrderDetail GetPurchaseCheckingOrderDetail(Guid id,out string message);   

		/// <summary>
        /// 添加采购到货验收
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchaseCheckingOrderDetail(PurchaseCheckingOrderDetail value,out string msg);

        /// <summary>
        /// 删除采购到货验收
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchaseCheckingOrderDetail(Guid id, out string msg);

        /// <summary>
        /// 保存采购到货验收
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchaseCheckingOrderDetail(PurchaseCheckingOrderDetail value, out string msg);  

		/// <summary>
        /// 所有记录采购到货验收
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseCheckingOrderDetail> AllPurchaseCheckingOrderDetails(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseCheckingOrderDetail> QueryPurchaseCheckingOrderDetails(decimal purchasepricefrom,decimal purchasepriceto,int arrivalamountfrom,int arrivalamountto,DateTime arrivaldatetimefrom,DateTime arrivaldatetimeto,int qualifiedamountfrom,int qualifiedamountto,int checkresultfrom,int checkresultto,string decription,string batchnumber,DateTime pruductdatefrom,DateTime pruductdateto,DateTime outvaliddatefrom,DateTime outvaliddateto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseCheckingOrderDetail> QueryPagedPurchaseCheckingOrderDetails(decimal purchasepricefrom,decimal purchasepriceto,int arrivalamountfrom,int arrivalamountto,DateTime arrivaldatetimefrom,DateTime arrivaldatetimeto,int qualifiedamountfrom,int qualifiedamountto,int checkresultfrom,int checkresultto,string decription,string batchnumber,DateTime pruductdatefrom,DateTime pruductdateto,DateTime outvaliddatefrom,DateTime outvaliddateto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseCheckingOrderDetail> SearchPurchaseCheckingOrderDetailsByQueryModel(QueryPurchaseCheckingOrderDetailModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseCheckingOrderDetail> SearchPagedPurchaseCheckingOrderDetailsByQueryModel(QueryPurchaseCheckingOrderDetailModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 采购到货验收 
		   
		#region 库存记录

		/// <summary>
        /// 获取实体库存记录
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchaseInInventeryOrder GetPurchaseInInventeryOrder(Guid id,out string message);   

		/// <summary>
        /// 添加库存记录
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchaseInInventeryOrder(PurchaseInInventeryOrder value,out string msg);

        /// <summary>
        /// 删除库存记录
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchaseInInventeryOrder(Guid id, out string msg);

        /// <summary>
        /// 保存库存记录
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchaseInInventeryOrder(PurchaseInInventeryOrder value, out string msg);  

		/// <summary>
        /// 所有记录库存记录
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseInInventeryOrder> AllPurchaseInInventeryOrders(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseInInventeryOrder> QueryPurchaseInInventeryOrders(string documentnumber,DateTime operatetimefrom,DateTime operatetimeto,int orderstatusvaluefrom,int orderstatusvalueto,string decription,string relatedorderdocumentnumber,int relatedordertypevaluefrom,int relatedordertypevalueto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseInInventeryOrder> QueryPagedPurchaseInInventeryOrders(string documentnumber,DateTime operatetimefrom,DateTime operatetimeto,int orderstatusvaluefrom,int orderstatusvalueto,string decription,string relatedorderdocumentnumber,int relatedordertypevaluefrom,int relatedordertypevalueto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseInInventeryOrder> SearchPurchaseInInventeryOrdersByQueryModel(QueryPurchaseInInventeryOrderModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseInInventeryOrder> SearchPagedPurchaseInInventeryOrdersByQueryModel(QueryPurchaseInInventeryOrderModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 库存记录 
		   
		#region 库存记录详细

		/// <summary>
        /// 获取实体库存记录详细
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchaseInInventeryOrderDetail GetPurchaseInInventeryOrderDetail(Guid id,out string message);   

		/// <summary>
        /// 添加库存记录详细
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchaseInInventeryOrderDetail(PurchaseInInventeryOrderDetail value,out string msg);

        /// <summary>
        /// 删除库存记录详细
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchaseInInventeryOrderDetail(Guid id, out string msg);

        /// <summary>
        /// 保存库存记录详细
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchaseInInventeryOrderDetail(PurchaseInInventeryOrderDetail value, out string msg);  

		/// <summary>
        /// 所有记录库存记录详细
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseInInventeryOrderDetail> AllPurchaseInInventeryOrderDetails(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseInInventeryOrderDetail> QueryPurchaseInInventeryOrderDetails(decimal purchasepricefrom,decimal purchasepriceto,string batchnumber,DateTime pruductdatefrom,DateTime pruductdateto,DateTime outvaliddatefrom,DateTime outvaliddateto,int arrivalamountfrom,int arrivalamountto,DateTime arrivaldatetimefrom,DateTime arrivaldatetimeto,string decription,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseInInventeryOrderDetail> QueryPagedPurchaseInInventeryOrderDetails(decimal purchasepricefrom,decimal purchasepriceto,string batchnumber,DateTime pruductdatefrom,DateTime pruductdateto,DateTime outvaliddatefrom,DateTime outvaliddateto,int arrivalamountfrom,int arrivalamountto,DateTime arrivaldatetimefrom,DateTime arrivaldatetimeto,string decription,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseInInventeryOrderDetail> SearchPurchaseInInventeryOrderDetailsByQueryModel(QueryPurchaseInInventeryOrderDetailModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseInInventeryOrderDetail> SearchPagedPurchaseInInventeryOrderDetailsByQueryModel(QueryPurchaseInInventeryOrderDetailModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 库存记录详细 
		   
		#region 管理要求分类

		/// <summary>
        /// 获取实体管理要求分类
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchaseManageCategory GetPurchaseManageCategory(Guid id,out string message);   

		/// <summary>
        /// 添加管理要求分类
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchaseManageCategory(PurchaseManageCategory value,out string msg);

        /// <summary>
        /// 删除管理要求分类
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchaseManageCategory(Guid id, out string msg);

        /// <summary>
        /// 保存管理要求分类
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchaseManageCategory(PurchaseManageCategory value, out string msg);  

		/// <summary>
        /// 所有记录管理要求分类
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseManageCategory> AllPurchaseManageCategorys(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseManageCategory> QueryPurchaseManageCategorys(string name,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseManageCategory> QueryPagedPurchaseManageCategorys(string name,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseManageCategory> SearchPurchaseManageCategorysByQueryModel(QueryPurchaseManageCategoryModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseManageCategory> SearchPagedPurchaseManageCategorysByQueryModel(QueryPurchaseManageCategoryModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 管理要求分类 
		   
		#region 管理要求分类详细

		/// <summary>
        /// 获取实体管理要求分类详细
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchaseManageCategoryDetail GetPurchaseManageCategoryDetail(Guid id,out string message);   

		/// <summary>
        /// 添加管理要求分类详细
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchaseManageCategoryDetail(PurchaseManageCategoryDetail value,out string msg);

        /// <summary>
        /// 删除管理要求分类详细
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchaseManageCategoryDetail(Guid id, out string msg);

        /// <summary>
        /// 保存管理要求分类详细
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchaseManageCategoryDetail(PurchaseManageCategoryDetail value, out string msg);  

		/// <summary>
        /// 所有记录管理要求分类详细
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseManageCategoryDetail> AllPurchaseManageCategoryDetails(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseManageCategoryDetail> QueryPurchaseManageCategoryDetails(string name,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseManageCategoryDetail> QueryPagedPurchaseManageCategoryDetails(string name,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseManageCategoryDetail> SearchPurchaseManageCategoryDetailsByQueryModel(QueryPurchaseManageCategoryDetailModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseManageCategoryDetail> SearchPagedPurchaseManageCategoryDetailsByQueryModel(QueryPurchaseManageCategoryDetailModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 管理要求分类详细 
		   
		#region 采购单

		/// <summary>
        /// 获取实体采购单
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchaseOrder GetPurchaseOrder(Guid id,out string message);   

		/// <summary>
        /// 添加采购单
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchaseOrder(PurchaseOrder value,out string msg);

        /// <summary>
        /// 删除采购单
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchaseOrder(Guid id, out string msg);

        /// <summary>
        /// 保存采购单
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchaseOrder(PurchaseOrder value, out string msg);  

		/// <summary>
        /// 所有记录采购单
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrder> AllPurchaseOrders(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrder> QueryPurchaseOrders(string documentnumber,decimal totalmoneyfrom,decimal totalmoneyto,decimal paymentforgoodsmoneyfrom,decimal paymentforgoodsmoneyto,decimal amountoftaxmoneyfrom,decimal amountoftaxmoneyto,int invaliddaysfrom,int invaliddaysto,DateTime purchaseddatefrom,DateTime purchaseddateto,DateTime createtimefrom,DateTime createtimeto,string decription,string approvaldecription,string amountapprovaldecription,int orderstatusvaluefrom,int orderstatusvalueto,DateTime updatetimefrom,DateTime updatetimeto,bool directmarketing,bool querydirectmarketing,string shippingmethod,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrder> QueryPagedPurchaseOrders(string documentnumber,decimal totalmoneyfrom,decimal totalmoneyto,decimal paymentforgoodsmoneyfrom,decimal paymentforgoodsmoneyto,decimal amountoftaxmoneyfrom,decimal amountoftaxmoneyto,int invaliddaysfrom,int invaliddaysto,DateTime purchaseddatefrom,DateTime purchaseddateto,DateTime createtimefrom,DateTime createtimeto,string decription,string approvaldecription,string amountapprovaldecription,int orderstatusvaluefrom,int orderstatusvalueto,DateTime updatetimefrom,DateTime updatetimeto,bool directmarketing,bool querydirectmarketing,string shippingmethod,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrder> SearchPurchaseOrdersByQueryModel(QueryPurchaseOrderModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrder> SearchPagedPurchaseOrdersByQueryModel(QueryPurchaseOrderModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 采购单 
		   
		#region 采购明细

		/// <summary>
        /// 获取实体采购明细
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchaseOrderDetail GetPurchaseOrderDetail(Guid id,out string message);   

		/// <summary>
        /// 添加采购明细
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchaseOrderDetail(PurchaseOrderDetail value,out string msg);

        /// <summary>
        /// 删除采购明细
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchaseOrderDetail(Guid id, out string msg);

        /// <summary>
        /// 保存采购明细
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchaseOrderDetail(PurchaseOrderDetail value, out string msg);  

		/// <summary>
        /// 所有记录采购明细
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrderDetail> AllPurchaseOrderDetails(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrderDetail> QueryPurchaseOrderDetails(DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int amountfrom,int amountto,decimal purchasepricefrom,decimal purchasepriceto,decimal amountoftaxfrom,decimal amountoftaxto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrderDetail> QueryPagedPurchaseOrderDetails(DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int amountfrom,int amountto,decimal purchasepricefrom,decimal purchasepriceto,decimal amountoftaxfrom,decimal amountoftaxto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrderDetail> SearchPurchaseOrderDetailsByQueryModel(QueryPurchaseOrderDetailModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrderDetail> SearchPagedPurchaseOrderDetailsByQueryModel(QueryPurchaseOrderDetailModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 采购明细 
		   
		#region 

		/// <summary>
        /// 获取实体
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchaseOrderReturn GetPurchaseOrderReturn(Guid id,out string message);   

		/// <summary>
        /// 添加
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchaseOrderReturn(PurchaseOrderReturn value,out string msg);

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchaseOrderReturn(Guid id, out string msg);

        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchaseOrderReturn(PurchaseOrderReturn value, out string msg);  

		/// <summary>
        /// 所有记录
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrderReturn> AllPurchaseOrderReturns(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrderReturn> QueryPurchaseOrderReturns(string documentnumber,string checkersuggest,string qualitysuggest,string generalmanagersuggest,string financedepartmentsuggest,int orderstatusvaluefrom,int orderstatusvalueto,string decription,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string relatedorderdocumentnumber,int relatedordertypevaluefrom,int relatedordertypevalueto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrderReturn> QueryPagedPurchaseOrderReturns(string documentnumber,string checkersuggest,string qualitysuggest,string generalmanagersuggest,string financedepartmentsuggest,int orderstatusvaluefrom,int orderstatusvalueto,string decription,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string relatedorderdocumentnumber,int relatedordertypevaluefrom,int relatedordertypevalueto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrderReturn> SearchPurchaseOrderReturnsByQueryModel(QueryPurchaseOrderReturnModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrderReturn> SearchPagedPurchaseOrderReturnsByQueryModel(QueryPurchaseOrderReturnModel qModel,int index,int size,out PagerInfo pager); 

		#endregion  
		   
		#region 

		/// <summary>
        /// 获取实体
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchaseOrderReturnDetail GetPurchaseOrderReturnDetail(Guid id,out string message);   

		/// <summary>
        /// 添加
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchaseOrderReturnDetail(PurchaseOrderReturnDetail value,out string msg);

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchaseOrderReturnDetail(Guid id, out string msg);

        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchaseOrderReturnDetail(PurchaseOrderReturnDetail value, out string msg);  

		/// <summary>
        /// 所有记录
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrderReturnDetail> AllPurchaseOrderReturnDetails(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrderReturnDetail> QueryPurchaseOrderReturnDetails(string batchnumber,DateTime pruductdatefrom,DateTime pruductdateto,DateTime outvaliddatefrom,DateTime outvaliddateto,int returnamountfrom,int returnamountto,decimal purchasepricefrom,decimal purchasepriceto,string returnreason,bool isreissue,bool queryisreissue,int reissueamountfrom,int reissueamountto,int purchasereturnsourcevaluefrom,int purchasereturnsourcevalueto,int returnhandledmethodvaluefrom,int returnhandledmethodvalueto,string decription,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrderReturnDetail> QueryPagedPurchaseOrderReturnDetails(string batchnumber,DateTime pruductdatefrom,DateTime pruductdateto,DateTime outvaliddatefrom,DateTime outvaliddateto,int returnamountfrom,int returnamountto,decimal purchasepricefrom,decimal purchasepriceto,string returnreason,bool isreissue,bool queryisreissue,int reissueamountfrom,int reissueamountto,int purchasereturnsourcevaluefrom,int purchasereturnsourcevalueto,int returnhandledmethodvaluefrom,int returnhandledmethodvalueto,string decription,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrderReturnDetail> SearchPurchaseOrderReturnDetailsByQueryModel(QueryPurchaseOrderReturnDetailModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseOrderReturnDetail> SearchPagedPurchaseOrderReturnDetailsByQueryModel(QueryPurchaseOrderReturnDetailModel qModel,int index,int size,out PagerInfo pager); 

		#endregion  
		   
		#region 采购收货单

		/// <summary>
        /// 获取实体采购收货单
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchaseReceivingOrder GetPurchaseReceivingOrder(Guid id,out string message);   

		/// <summary>
        /// 添加采购收货单
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchaseReceivingOrder(PurchaseReceivingOrder value,out string msg);

        /// <summary>
        /// 删除采购收货单
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchaseReceivingOrder(Guid id, out string msg);

        /// <summary>
        /// 保存采购收货单
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchaseReceivingOrder(PurchaseReceivingOrder value, out string msg);  

		/// <summary>
        /// 所有记录采购收货单
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseReceivingOrder> AllPurchaseReceivingOrders(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseReceivingOrder> QueryPurchaseReceivingOrders(string documentnumber,DateTime operatetimefrom,DateTime operatetimeto,DateTime shippingtimefrom,DateTime shippingtimeto,string shippingadress,string shippingunit,string transportunit,int orderstatusvaluefrom,int orderstatusvalueto,string decription,string relatedorderdocumentnumber,int relatedordertypevaluefrom,int relatedordertypevalueto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseReceivingOrder> QueryPagedPurchaseReceivingOrders(string documentnumber,DateTime operatetimefrom,DateTime operatetimeto,DateTime shippingtimefrom,DateTime shippingtimeto,string shippingadress,string shippingunit,string transportunit,int orderstatusvaluefrom,int orderstatusvalueto,string decription,string relatedorderdocumentnumber,int relatedordertypevaluefrom,int relatedordertypevalueto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseReceivingOrder> SearchPurchaseReceivingOrdersByQueryModel(QueryPurchaseReceivingOrderModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseReceivingOrder> SearchPagedPurchaseReceivingOrdersByQueryModel(QueryPurchaseReceivingOrderModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 采购收货单 
		   
		#region 采购收货详细单

		/// <summary>
        /// 获取实体采购收货详细单
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchaseReceivingOrderDetail GetPurchaseReceivingOrderDetail(Guid id,out string message);   

		/// <summary>
        /// 添加采购收货详细单
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchaseReceivingOrderDetail(PurchaseReceivingOrderDetail value,out string msg);

        /// <summary>
        /// 删除采购收货详细单
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchaseReceivingOrderDetail(Guid id, out string msg);

        /// <summary>
        /// 保存采购收货详细单
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchaseReceivingOrderDetail(PurchaseReceivingOrderDetail value, out string msg);  

		/// <summary>
        /// 所有记录采购收货详细单
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseReceivingOrderDetail> AllPurchaseReceivingOrderDetails(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseReceivingOrderDetail> QueryPurchaseReceivingOrderDetails(int amountfrom,int amountto,decimal purchasepricefrom,decimal purchasepriceto,int actualamountfrom,int actualamountto,int receiveamountfrom,int receiveamountto,int rejectamountfrom,int rejectamountto,string rejectreason,string rejecttrace,bool iscompanypurchase,bool queryiscompanypurchase,string transportmethod,bool istransportmethod,bool queryistransportmethod,string transporttemperature,string temperaturestatus,bool istransporttemperature,bool queryistransporttemperature,int checkresultfrom,int checkresultto,string decription,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseReceivingOrderDetail> QueryPagedPurchaseReceivingOrderDetails(int amountfrom,int amountto,decimal purchasepricefrom,decimal purchasepriceto,int actualamountfrom,int actualamountto,int receiveamountfrom,int receiveamountto,int rejectamountfrom,int rejectamountto,string rejectreason,string rejecttrace,bool iscompanypurchase,bool queryiscompanypurchase,string transportmethod,bool istransportmethod,bool queryistransportmethod,string transporttemperature,string temperaturestatus,bool istransporttemperature,bool queryistransporttemperature,int checkresultfrom,int checkresultto,string decription,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseReceivingOrderDetail> SearchPurchaseReceivingOrderDetailsByQueryModel(QueryPurchaseReceivingOrderDetailModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseReceivingOrderDetail> SearchPagedPurchaseReceivingOrderDetailsByQueryModel(QueryPurchaseReceivingOrderDetailModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 采购收货详细单 
		   
		#region 购货单位

		/// <summary>
        /// 获取实体购货单位
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchaseUnit GetPurchaseUnit(Guid id,out string message);   

		/// <summary>
        /// 添加购货单位
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchaseUnit(PurchaseUnit value,out string msg);

        /// <summary>
        /// 删除购货单位
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchaseUnit(Guid id, out string msg);

        /// <summary>
        /// 保存购货单位
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchaseUnit(PurchaseUnit value, out string msg);  

		/// <summary>
        /// 所有记录购货单位
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnit> AllPurchaseUnits(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnit> QueryPurchaseUnits(bool valid,bool queryvalid,string validremark,bool islock,bool queryislock,string lockremark,string receiveaddress,string name,string code,string pinyincode,string contactname,string contacttel,string description,string legalperson,string header,string businessscope,string salesamount,string fax,string email,string webaddress,bool isoutdate,bool queryisoutdate,DateTime outdatefrom,DateTime outdateto,bool isgsplicenseoutdate,bool queryisgsplicenseoutdate,DateTime gsplicenseoutdatefrom,DateTime gsplicenseoutdateto,bool isgmplicenseoutdate,bool queryisgmplicenseoutdate,DateTime gmplicenseoutdatefrom,DateTime gmplicenseoutdateto,bool isbusinesslicenseoutdate,bool queryisbusinesslicenseoutdate,DateTime businesslicenseeoutdatefrom,DateTime businesslicenseeoutdateto,bool ismedicineproductionlicenseoutdate,bool queryismedicineproductionlicenseoutdate,DateTime medicineproductionlicenseoutdatefrom,DateTime medicineproductionlicenseoutdateto,bool ismedicinebusinesslicenseoutdate,bool queryismedicinebusinesslicenseoutdate,DateTime medicinebusinesslicenseoutdatefrom,DateTime medicinebusinesslicenseoutdateto,bool isinstrumentsproductionlicenseoutdate,bool queryisinstrumentsproductionlicenseoutdate,DateTime instrumentsproductionlicenseoutdatefrom,DateTime instrumentsproductionlicenseoutdateto,bool isinstrumentsbusinesslicenseoutdate,bool queryisinstrumentsbusinesslicenseoutdate,DateTime instrumentsbusinesslicenseoutdatefrom,DateTime instrumentsbusinesslicenseoutdateto,string taxregistrationcode,DateTime lastannualdtefrom,DateTime lastannualdteto,bool isapproval,bool queryisapproval,int approvalstatusvaluefrom,int approvalstatusvalueto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnit> QueryPagedPurchaseUnits(bool valid,bool queryvalid,string validremark,bool islock,bool queryislock,string lockremark,string receiveaddress,string name,string code,string pinyincode,string contactname,string contacttel,string description,string legalperson,string header,string businessscope,string salesamount,string fax,string email,string webaddress,bool isoutdate,bool queryisoutdate,DateTime outdatefrom,DateTime outdateto,bool isgsplicenseoutdate,bool queryisgsplicenseoutdate,DateTime gsplicenseoutdatefrom,DateTime gsplicenseoutdateto,bool isgmplicenseoutdate,bool queryisgmplicenseoutdate,DateTime gmplicenseoutdatefrom,DateTime gmplicenseoutdateto,bool isbusinesslicenseoutdate,bool queryisbusinesslicenseoutdate,DateTime businesslicenseeoutdatefrom,DateTime businesslicenseeoutdateto,bool ismedicineproductionlicenseoutdate,bool queryismedicineproductionlicenseoutdate,DateTime medicineproductionlicenseoutdatefrom,DateTime medicineproductionlicenseoutdateto,bool ismedicinebusinesslicenseoutdate,bool queryismedicinebusinesslicenseoutdate,DateTime medicinebusinesslicenseoutdatefrom,DateTime medicinebusinesslicenseoutdateto,bool isinstrumentsproductionlicenseoutdate,bool queryisinstrumentsproductionlicenseoutdate,DateTime instrumentsproductionlicenseoutdatefrom,DateTime instrumentsproductionlicenseoutdateto,bool isinstrumentsbusinesslicenseoutdate,bool queryisinstrumentsbusinesslicenseoutdate,DateTime instrumentsbusinesslicenseoutdatefrom,DateTime instrumentsbusinesslicenseoutdateto,string taxregistrationcode,DateTime lastannualdtefrom,DateTime lastannualdteto,bool isapproval,bool queryisapproval,int approvalstatusvaluefrom,int approvalstatusvalueto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnit> SearchPurchaseUnitsByQueryModel(QueryPurchaseUnitModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnit> SearchPagedPurchaseUnitsByQueryModel(QueryPurchaseUnitModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 购货单位 
		   
		#region 购货单位采购人员

		/// <summary>
        /// 获取实体购货单位采购人员
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchaseUnitBuyer GetPurchaseUnitBuyer(Guid id,out string message);   

		/// <summary>
        /// 添加购货单位采购人员
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchaseUnitBuyer(PurchaseUnitBuyer value,out string msg);

        /// <summary>
        /// 删除购货单位采购人员
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchaseUnitBuyer(Guid id, out string msg);

        /// <summary>
        /// 保存购货单位采购人员
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchaseUnitBuyer(PurchaseUnitBuyer value, out string msg);  

		/// <summary>
        /// 所有记录购货单位采购人员
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnitBuyer> AllPurchaseUnitBuyers(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnitBuyer> QueryPurchaseUnitBuyers(DateTime outdatefrom,DateTime outdateto,int purchaselimittypevaluefrom,int purchaselimittypevalueto,string name,string idnumber,string tel,string address,DateTime birthdayfrom,DateTime birthdayto,string gender,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,bool valid,bool queryvalid,bool enabled,bool queryenabled,bool ischecked,bool queryischecked,string idchecktype,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnitBuyer> QueryPagedPurchaseUnitBuyers(DateTime outdatefrom,DateTime outdateto,int purchaselimittypevaluefrom,int purchaselimittypevalueto,string name,string idnumber,string tel,string address,DateTime birthdayfrom,DateTime birthdayto,string gender,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,bool valid,bool queryvalid,bool enabled,bool queryenabled,bool ischecked,bool queryischecked,string idchecktype,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnitBuyer> SearchPurchaseUnitBuyersByQueryModel(QueryPurchaseUnitBuyerModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnitBuyer> SearchPagedPurchaseUnitBuyersByQueryModel(QueryPurchaseUnitBuyerModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 购货单位采购人员 
		   
		#region 购货单位提货人员

		/// <summary>
        /// 获取实体购货单位提货人员
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchaseUnitDeliverer GetPurchaseUnitDeliverer(Guid id,out string message);   

		/// <summary>
        /// 添加购货单位提货人员
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchaseUnitDeliverer(PurchaseUnitDeliverer value,out string msg);

        /// <summary>
        /// 删除购货单位提货人员
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchaseUnitDeliverer(Guid id, out string msg);

        /// <summary>
        /// 保存购货单位提货人员
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchaseUnitDeliverer(PurchaseUnitDeliverer value, out string msg);  

		/// <summary>
        /// 所有记录购货单位提货人员
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnitDeliverer> AllPurchaseUnitDeliverers(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnitDeliverer> QueryPurchaseUnitDeliverers(string name,string idfile,string idnumber,string tel,string address,DateTime birthdayfrom,DateTime birthdayto,string gender,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,bool valid,bool queryvalid,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnitDeliverer> QueryPagedPurchaseUnitDeliverers(string name,string idfile,string idnumber,string tel,string address,DateTime birthdayfrom,DateTime birthdayto,string gender,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,bool valid,bool queryvalid,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnitDeliverer> SearchPurchaseUnitDeliverersByQueryModel(QueryPurchaseUnitDelivererModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnitDeliverer> SearchPagedPurchaseUnitDeliverersByQueryModel(QueryPurchaseUnitDelivererModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 购货单位提货人员 
		   
		#region 购货单位类型

		/// <summary>
        /// 获取实体购货单位类型
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchaseUnitType GetPurchaseUnitType(Guid id,out string message);   

		/// <summary>
        /// 添加购货单位类型
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchaseUnitType(PurchaseUnitType value,out string msg);

        /// <summary>
        /// 删除购货单位类型
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchaseUnitType(Guid id, out string msg);

        /// <summary>
        /// 保存购货单位类型
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchaseUnitType(PurchaseUnitType value, out string msg);  

		/// <summary>
        /// 所有记录购货单位类型
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnitType> AllPurchaseUnitTypes(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnitType> QueryPurchaseUnitTypes(string name,string decription,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnitType> QueryPagedPurchaseUnitTypes(string name,string decription,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnitType> SearchPurchaseUnitTypesByQueryModel(QueryPurchaseUnitTypeModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchaseUnitType> SearchPagedPurchaseUnitTypesByQueryModel(QueryPurchaseUnitTypeModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 购货单位类型 
		   
		#region 

		/// <summary>
        /// 获取实体
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchasingPlan GetPurchasingPlan(Guid id,out string message);   

		/// <summary>
        /// 添加
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchasingPlan(PurchasingPlan value,out string msg);

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchasingPlan(Guid id, out string msg);

        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchasingPlan(PurchasingPlan value, out string msg);  

		/// <summary>
        /// 所有记录
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchasingPlan> AllPurchasingPlans(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchasingPlan> QueryPurchasingPlans(out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchasingPlan> QueryPagedPurchasingPlans(int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchasingPlan> SearchPurchasingPlansByQueryModel(QueryPurchasingPlanModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchasingPlan> SearchPagedPurchasingPlansByQueryModel(QueryPurchasingPlanModel qModel,int index,int size,out PagerInfo pager); 

		#endregion  
		   
		#region 

		/// <summary>
        /// 获取实体
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        PurchasingPlanDetail GetPurchasingPlanDetail(Guid id,out string message);   

		/// <summary>
        /// 添加
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddPurchasingPlanDetail(PurchasingPlanDetail value,out string msg);

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeletePurchasingPlanDetail(Guid id, out string msg);

        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SavePurchasingPlanDetail(PurchasingPlanDetail value, out string msg);  

		/// <summary>
        /// 所有记录
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchasingPlanDetail> AllPurchasingPlanDetails(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchasingPlanDetail> QueryPurchasingPlanDetails(out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchasingPlanDetail> QueryPagedPurchasingPlanDetails(int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchasingPlanDetail> SearchPurchasingPlanDetailsByQueryModel(QueryPurchasingPlanDetailModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<PurchasingPlanDetail> SearchPagedPurchasingPlanDetailsByQueryModel(QueryPurchasingPlanDetailModel qModel,int index,int size,out PagerInfo pager); 

		#endregion  
		   
		#region 不常用字(生僻字)

		/// <summary>
        /// 获取实体不常用字(生僻字)
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        Rareword GetRareword(Guid id,out string message);   

		/// <summary>
        /// 添加不常用字(生僻字)
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddRareword(Rareword value,out string msg);

        /// <summary>
        /// 删除不常用字(生僻字)
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteRareword(Guid id, out string msg);

        /// <summary>
        /// 保存不常用字(生僻字)
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveRareword(Rareword value, out string msg);  

		/// <summary>
        /// 所有记录不常用字(生僻字)
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Rareword> AllRarewords(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Rareword> QueryRarewords(string pinyin,string word,string parts,string code,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Rareword> QueryPagedRarewords(string pinyin,string word,string parts,string code,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Rareword> SearchRarewordsByQueryModel(QueryRarewordModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Rareword> SearchPagedRarewordsByQueryModel(QueryRarewordModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 不常用字(生僻字) 
		   
		#region 零售会员

		/// <summary>
        /// 获取实体零售会员
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        RetailMember GetRetailMember(Guid id,out string message);   

		/// <summary>
        /// 添加零售会员
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddRetailMember(RetailMember value,out string msg);

        /// <summary>
        /// 删除零售会员
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteRetailMember(Guid id, out string msg);

        /// <summary>
        /// 保存零售会员
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveRetailMember(RetailMember value, out string msg);  

		/// <summary>
        /// 所有记录零售会员
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RetailMember> AllRetailMembers(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RetailMember> QueryRetailMembers(string name,string code,bool enabled,bool queryenabled,int retailcustomertypevaluefrom,int retailcustomertypevalueto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RetailMember> QueryPagedRetailMembers(string name,string code,bool enabled,bool queryenabled,int retailcustomertypevaluefrom,int retailcustomertypevalueto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RetailMember> SearchRetailMembersByQueryModel(QueryRetailMemberModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RetailMember> SearchPagedRetailMembersByQueryModel(QueryRetailMemberModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 零售会员 
		   
		#region 

		/// <summary>
        /// 获取实体
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        RetailOrder GetRetailOrder(Guid id,out string message);   

		/// <summary>
        /// 添加
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddRetailOrder(RetailOrder value,out string msg);

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteRetailOrder(Guid id, out string msg);

        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveRetailOrder(RetailOrder value, out string msg);  

		/// <summary>
        /// 所有记录
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RetailOrder> AllRetailOrders(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RetailOrder> QueryRetailOrders(DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string code,string description,decimal totalmoneyfrom,decimal totalmoneyto,decimal reducemoneyfrom,decimal reducemoneyto,decimal receivablemoneyfrom,decimal receivablemoneyto,decimal gotmoneyfrom,decimal gotmoneyto,decimal changemoneyfrom,decimal changemoneyto,decimal realpaymoneyfrom,decimal realpaymoneyto,int retailcustomertypevaluefrom,int retailcustomertypevalueto,int retailpaymentmethodvaluefrom,int retailpaymentmethodvalueto,decimal totalrefundfrom,decimal totalrefundto,decimal returnreducemoneyfrom,decimal returnreducemoneyto,decimal returnreceivablemoneyfrom,decimal returnreceivablemoneyto,decimal returnrealreceivemoneyfrom,decimal returnrealreceivemoneyto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RetailOrder> QueryPagedRetailOrders(DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string code,string description,decimal totalmoneyfrom,decimal totalmoneyto,decimal reducemoneyfrom,decimal reducemoneyto,decimal receivablemoneyfrom,decimal receivablemoneyto,decimal gotmoneyfrom,decimal gotmoneyto,decimal changemoneyfrom,decimal changemoneyto,decimal realpaymoneyfrom,decimal realpaymoneyto,int retailcustomertypevaluefrom,int retailcustomertypevalueto,int retailpaymentmethodvaluefrom,int retailpaymentmethodvalueto,decimal totalrefundfrom,decimal totalrefundto,decimal returnreducemoneyfrom,decimal returnreducemoneyto,decimal returnreceivablemoneyfrom,decimal returnreceivablemoneyto,decimal returnrealreceivemoneyfrom,decimal returnrealreceivemoneyto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RetailOrder> SearchRetailOrdersByQueryModel(QueryRetailOrderModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RetailOrder> SearchPagedRetailOrdersByQueryModel(QueryRetailOrderModel qModel,int index,int size,out PagerInfo pager); 

		#endregion  
		   
		#region 零售单明细

		/// <summary>
        /// 获取实体零售单明细
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        RetailOrderDetail GetRetailOrderDetail(Guid id,out string message);   

		/// <summary>
        /// 添加零售单明细
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddRetailOrderDetail(RetailOrderDetail value,out string msg);

        /// <summary>
        /// 删除零售单明细
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteRetailOrderDetail(Guid id, out string msg);

        /// <summary>
        /// 保存零售单明细
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveRetailOrderDetail(RetailOrderDetail value, out string msg);  

		/// <summary>
        /// 所有记录零售单明细
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RetailOrderDetail> AllRetailOrderDetails(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RetailOrderDetail> QueryRetailOrderDetails(DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int indexfrom,int indexto,string productname,string productcode,string batchnumber,int amountfrom,int amountto,int returnamountfrom,int returnamountto,bool isdismanting,bool queryisdismanting,int dismantingamountfrom,int dismantingamountto,decimal unitpricefrom,decimal unitpriceto,decimal dismantingunitpricefrom,decimal dismantingunitpriceto,decimal actualunitpricefrom,decimal actualunitpriceto,decimal actualdismantingunitpricefrom,decimal actualdismantingunitpriceto,string measurementunit,string specificationcode,DateTime pruductdatefrom,DateTime pruductdateto,DateTime outvaliddatefrom,DateTime outvaliddateto,string factoryname,string description,bool isdiscount,bool queryisdiscount,int discountfrom,int discountto,int discountpricefrom,int discountpriceto,decimal totalmoneyfrom,decimal totalmoneyto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RetailOrderDetail> QueryPagedRetailOrderDetails(DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int indexfrom,int indexto,string productname,string productcode,string batchnumber,int amountfrom,int amountto,int returnamountfrom,int returnamountto,bool isdismanting,bool queryisdismanting,int dismantingamountfrom,int dismantingamountto,decimal unitpricefrom,decimal unitpriceto,decimal dismantingunitpricefrom,decimal dismantingunitpriceto,decimal actualunitpricefrom,decimal actualunitpriceto,decimal actualdismantingunitpricefrom,decimal actualdismantingunitpriceto,string measurementunit,string specificationcode,DateTime pruductdatefrom,DateTime pruductdateto,DateTime outvaliddatefrom,DateTime outvaliddateto,string factoryname,string description,bool isdiscount,bool queryisdiscount,int discountfrom,int discountto,int discountpricefrom,int discountpriceto,decimal totalmoneyfrom,decimal totalmoneyto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RetailOrderDetail> SearchRetailOrderDetailsByQueryModel(QueryRetailOrderDetailModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RetailOrderDetail> SearchPagedRetailOrderDetailsByQueryModel(QueryRetailOrderDetailModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 零售单明细 
		   
		#region 系统角色

		/// <summary>
        /// 获取实体系统角色
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        Role GetRole(Guid id,out string message);   

		/// <summary>
        /// 添加系统角色
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddRole(Role value,out string msg);

        /// <summary>
        /// 删除系统角色
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteRole(Guid id, out string msg);

        /// <summary>
        /// 保存系统角色
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveRole(Role value, out string msg);  

		/// <summary>
        /// 所有记录系统角色
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Role> AllRoles(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Role> QueryRoles(string name,string code,string description,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Role> QueryPagedRoles(string name,string code,string description,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Role> SearchRolesByQueryModel(QueryRoleModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Role> SearchPagedRolesByQueryModel(QueryRoleModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 系统角色 
		   
		#region 角色与用户的关联

		/// <summary>
        /// 获取实体角色与用户的关联
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        RoleWithUser GetRoleWithUser(Guid id,out string message);   

		/// <summary>
        /// 添加角色与用户的关联
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddRoleWithUser(RoleWithUser value,out string msg);

        /// <summary>
        /// 删除角色与用户的关联
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteRoleWithUser(Guid id, out string msg);

        /// <summary>
        /// 保存角色与用户的关联
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveRoleWithUser(RoleWithUser value, out string msg);  

		/// <summary>
        /// 所有记录角色与用户的关联
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RoleWithUser> AllRoleWithUsers(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RoleWithUser> QueryRoleWithUsers(DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RoleWithUser> QueryPagedRoleWithUsers(DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RoleWithUser> SearchRoleWithUsersByQueryModel(QueryRoleWithUserModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<RoleWithUser> SearchPagedRoleWithUsersByQueryModel(QueryRoleWithUserModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 角色与用户的关联 
		   
		#region 销售单

		/// <summary>
        /// 获取实体销售单
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        SalesOrder GetSalesOrder(Guid id,out string message);   

		/// <summary>
        /// 添加销售单
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddSalesOrder(SalesOrder value,out string msg);

        /// <summary>
        /// 删除销售单
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteSalesOrder(Guid id, out string msg);

        /// <summary>
        /// 保存销售单
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveSalesOrder(SalesOrder value, out string msg);  

		/// <summary>
        /// 所有记录销售单
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrder> AllSalesOrders(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrder> QuerySalesOrders(DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string salername,DateTime saledatefrom,DateTime saledateto,string description,decimal totalmoneyfrom,decimal totalmoneyto,string ordercode,bool alldelivered,bool queryalldelivered,int salesdrugtypevaluefrom,int salesdrugtypevalueto,int pickupgoodtypevaluefrom,int pickupgoodtypevalueto,string pickupman,string purchaseunitman,int orderstatusvaluefrom,int orderstatusvalueto,string cancelreason,string ordercancelcode,string orderbalancecode,string balancereason,string orderoutinventorycode,string orderoutinventorycheckcode,string orderreturncode,string orderreturnreason,string orderreturncancelcode,string orderreturncancelreason,string orderreturncheckcode,string orderreturnininventorycode,string orderdirectreturncode,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrder> QueryPagedSalesOrders(DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string salername,DateTime saledatefrom,DateTime saledateto,string description,decimal totalmoneyfrom,decimal totalmoneyto,string ordercode,bool alldelivered,bool queryalldelivered,int salesdrugtypevaluefrom,int salesdrugtypevalueto,int pickupgoodtypevaluefrom,int pickupgoodtypevalueto,string pickupman,string purchaseunitman,int orderstatusvaluefrom,int orderstatusvalueto,string cancelreason,string ordercancelcode,string orderbalancecode,string balancereason,string orderoutinventorycode,string orderoutinventorycheckcode,string orderreturncode,string orderreturnreason,string orderreturncancelcode,string orderreturncancelreason,string orderreturncheckcode,string orderreturnininventorycode,string orderdirectreturncode,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrder> SearchSalesOrdersByQueryModel(QuerySalesOrderModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrder> SearchPagedSalesOrdersByQueryModel(QuerySalesOrderModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 销售单 
		   
		#region 

		/// <summary>
        /// 获取实体
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        SalesOrderDeliverDetail GetSalesOrderDeliverDetail(Guid id,out string message);   

		/// <summary>
        /// 添加
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddSalesOrderDeliverDetail(SalesOrderDeliverDetail value,out string msg);

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteSalesOrderDeliverDetail(Guid id, out string msg);

        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveSalesOrderDeliverDetail(SalesOrderDeliverDetail value, out string msg);  

		/// <summary>
        /// 所有记录
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderDeliverDetail> AllSalesOrderDeliverDetails(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderDeliverDetail> QuerySalesOrderDeliverDetails(out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderDeliverDetail> QueryPagedSalesOrderDeliverDetails(int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderDeliverDetail> SearchSalesOrderDeliverDetailsByQueryModel(QuerySalesOrderDeliverDetailModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderDeliverDetail> SearchPagedSalesOrderDeliverDetailsByQueryModel(QuerySalesOrderDeliverDetailModel qModel,int index,int size,out PagerInfo pager); 

		#endregion  
		   
		#region 销售发货记录

		/// <summary>
        /// 获取实体销售发货记录
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        SalesOrderDeliverRecord GetSalesOrderDeliverRecord(Guid id,out string message);   

		/// <summary>
        /// 添加销售发货记录
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddSalesOrderDeliverRecord(SalesOrderDeliverRecord value,out string msg);

        /// <summary>
        /// 删除销售发货记录
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteSalesOrderDeliverRecord(Guid id, out string msg);

        /// <summary>
        /// 保存销售发货记录
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveSalesOrderDeliverRecord(SalesOrderDeliverRecord value, out string msg);  

		/// <summary>
        /// 所有记录销售发货记录
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderDeliverRecord> AllSalesOrderDeliverRecords(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderDeliverRecord> QuerySalesOrderDeliverRecords(DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,bool haddelivered,bool queryhaddelivered,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderDeliverRecord> QueryPagedSalesOrderDeliverRecords(DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,bool haddelivered,bool queryhaddelivered,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderDeliverRecord> SearchSalesOrderDeliverRecordsByQueryModel(QuerySalesOrderDeliverRecordModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderDeliverRecord> SearchPagedSalesOrderDeliverRecordsByQueryModel(QuerySalesOrderDeliverRecordModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 销售发货记录 
		   
		#region 销售单明细

		/// <summary>
        /// 获取实体销售单明细
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        SalesOrderDetail GetSalesOrderDetail(Guid id,out string message);   

		/// <summary>
        /// 添加销售单明细
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddSalesOrderDetail(SalesOrderDetail value,out string msg);

        /// <summary>
        /// 删除销售单明细
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteSalesOrderDetail(Guid id, out string msg);

        /// <summary>
        /// 保存销售单明细
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveSalesOrderDetail(SalesOrderDetail value, out string msg);  

		/// <summary>
        /// 所有记录销售单明细
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderDetail> AllSalesOrderDetails(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderDetail> QuerySalesOrderDetails(int indexfrom,int indexto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string productname,string productcode,string batchnumber,int amountfrom,int amountto,decimal unitpricefrom,decimal unitpriceto,decimal actualunitpricefrom,decimal actualunitpriceto,decimal pricefrom,decimal priceto,string measurementunit,string specificationcode,string dictionarydosagecode,string origin,DateTime pruductdatefrom,DateTime pruductdateto,DateTime outvaliddatefrom,DateTime outvaliddateto,string factoryname,string description,int returnamountfrom,int returnamountto,int changeamountfrom,int changeamountto,int outamountfrom,int outamountto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderDetail> QueryPagedSalesOrderDetails(int indexfrom,int indexto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string productname,string productcode,string batchnumber,int amountfrom,int amountto,decimal unitpricefrom,decimal unitpriceto,decimal actualunitpricefrom,decimal actualunitpriceto,decimal pricefrom,decimal priceto,string measurementunit,string specificationcode,string dictionarydosagecode,string origin,DateTime pruductdatefrom,DateTime pruductdateto,DateTime outvaliddatefrom,DateTime outvaliddateto,string factoryname,string description,int returnamountfrom,int returnamountto,int changeamountfrom,int changeamountto,int outamountfrom,int outamountto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderDetail> SearchSalesOrderDetailsByQueryModel(QuerySalesOrderDetailModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderDetail> SearchPagedSalesOrderDetailsByQueryModel(QuerySalesOrderDetailModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 销售单明细 
		   
		#region 

		/// <summary>
        /// 获取实体
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        SalesOrderReturn GetSalesOrderReturn(Guid id,out string message);   

		/// <summary>
        /// 添加
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddSalesOrderReturn(SalesOrderReturn value,out string msg);

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteSalesOrderReturn(Guid id, out string msg);

        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveSalesOrderReturn(SalesOrderReturn value, out string msg);  

		/// <summary>
        /// 所有记录
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderReturn> AllSalesOrderReturns(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderReturn> QuerySalesOrderReturns(string orderreturncode,string orderreturnreason,DateTime orderreturntimefrom,DateTime orderreturntimeto,bool isreissue,bool queryisreissue,string sellermemo,DateTime sellerupdatetimefrom,DateTime sellerupdatetimeto,string tradememo,DateTime tradeupdatetimefrom,DateTime tradeupdatetimeto,string qualitymemo,DateTime qualityupdatetimefrom,DateTime qualityupdatetimeto,int orderreturnstatusvaluefrom,int orderreturnstatusvalueto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string orderreturnininventorycode,string orderreturncancelcode,string orderreturncancelreason,string orderreturncheckcode,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderReturn> QueryPagedSalesOrderReturns(string orderreturncode,string orderreturnreason,DateTime orderreturntimefrom,DateTime orderreturntimeto,bool isreissue,bool queryisreissue,string sellermemo,DateTime sellerupdatetimefrom,DateTime sellerupdatetimeto,string tradememo,DateTime tradeupdatetimefrom,DateTime tradeupdatetimeto,string qualitymemo,DateTime qualityupdatetimefrom,DateTime qualityupdatetimeto,int orderreturnstatusvaluefrom,int orderreturnstatusvalueto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string orderreturnininventorycode,string orderreturncancelcode,string orderreturncancelreason,string orderreturncheckcode,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderReturn> SearchSalesOrderReturnsByQueryModel(QuerySalesOrderReturnModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderReturn> SearchPagedSalesOrderReturnsByQueryModel(QuerySalesOrderReturnModel qModel,int index,int size,out PagerInfo pager); 

		#endregion  
		   
		#region 

		/// <summary>
        /// 获取实体
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        SalesOrderReturnDetail GetSalesOrderReturnDetail(Guid id,out string message);   

		/// <summary>
        /// 添加
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddSalesOrderReturnDetail(SalesOrderReturnDetail value,out string msg);

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteSalesOrderReturnDetail(Guid id, out string msg);

        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveSalesOrderReturnDetail(SalesOrderReturnDetail value, out string msg);  

		/// <summary>
        /// 所有记录
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderReturnDetail> AllSalesOrderReturnDetails(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderReturnDetail> QuerySalesOrderReturnDetails(int indexfrom,int indexto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string productname,string productcode,string batchnumber,int orderamountfrom,int orderamountto,decimal unitpricefrom,decimal unitpriceto,decimal actualunitpricefrom,decimal actualunitpriceto,decimal pricefrom,decimal priceto,string measurementunit,string specificationcode,DateTime pruductdatefrom,DateTime pruductdateto,DateTime outvaliddatefrom,DateTime outvaliddateto,string factoryname,string description,int returnamountfrom,int returnamountto,int returnreasonvaluefrom,int returnreasonvalueto,string returnreasonmemo,int caninamountfrom,int caninamountto,int cannotinamountfrom,int cannotinamountto,int returnhandledmethodvaluefrom,int returnhandledmethodvalueto,string returnhandledmethodmemo,bool isreissue,bool queryisreissue,int reissueamountfrom,int reissueamountto,string dictionarydosagecode,string origin,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderReturnDetail> QueryPagedSalesOrderReturnDetails(int indexfrom,int indexto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string productname,string productcode,string batchnumber,int orderamountfrom,int orderamountto,decimal unitpricefrom,decimal unitpriceto,decimal actualunitpricefrom,decimal actualunitpriceto,decimal pricefrom,decimal priceto,string measurementunit,string specificationcode,DateTime pruductdatefrom,DateTime pruductdateto,DateTime outvaliddatefrom,DateTime outvaliddateto,string factoryname,string description,int returnamountfrom,int returnamountto,int returnreasonvaluefrom,int returnreasonvalueto,string returnreasonmemo,int caninamountfrom,int caninamountto,int cannotinamountfrom,int cannotinamountto,int returnhandledmethodvaluefrom,int returnhandledmethodvalueto,string returnhandledmethodmemo,bool isreissue,bool queryisreissue,int reissueamountfrom,int reissueamountto,string dictionarydosagecode,string origin,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderReturnDetail> SearchSalesOrderReturnDetailsByQueryModel(QuerySalesOrderReturnDetailModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SalesOrderReturnDetail> SearchPagedSalesOrderReturnDetailsByQueryModel(QuerySalesOrderReturnDetailModel qModel,int index,int size,out PagerInfo pager); 

		#endregion  
		   
		#region 销售出库单

		/// <summary>
        /// 获取实体销售出库单
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        OutInventory GetOutInventory(Guid id,out string message);   

		/// <summary>
        /// 添加销售出库单
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddOutInventory(OutInventory value,out string msg);

        /// <summary>
        /// 删除销售出库单
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteOutInventory(Guid id, out string msg);

        /// <summary>
        /// 保存销售出库单
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveOutInventory(OutInventory value, out string msg);  

		/// <summary>
        /// 所有记录销售出库单
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<OutInventory> AllOutInventorys(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<OutInventory> QueryOutInventorys(string outinventorynumber,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,DateTime outinventorydatefrom,DateTime outinventorydateto,string description,string orderoutinventorychecknumber,decimal totalmoneyfrom,decimal totalmoneyto,decimal totaltaxfrom,decimal totaltaxto,int outinventorytypevaluefrom,int outinventorytypevalueto,int outinventorystatusvaluefrom,int outinventorystatusvalueto,string ordercode,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<OutInventory> QueryPagedOutInventorys(string outinventorynumber,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,DateTime outinventorydatefrom,DateTime outinventorydateto,string description,string orderoutinventorychecknumber,decimal totalmoneyfrom,decimal totalmoneyto,decimal totaltaxfrom,decimal totaltaxto,int outinventorytypevaluefrom,int outinventorytypevalueto,int outinventorystatusvaluefrom,int outinventorystatusvalueto,string ordercode,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<OutInventory> SearchOutInventorysByQueryModel(QueryOutInventoryModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<OutInventory> SearchPagedOutInventorysByQueryModel(QueryOutInventoryModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 销售出库单 
		   
		#region 设置重点药品记录表

		/// <summary>
        /// 获取实体设置重点药品记录表
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        SetSpeicalDrugRecord GetSetSpeicalDrugRecord(Guid id,out string message);   

		/// <summary>
        /// 添加设置重点药品记录表
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddSetSpeicalDrugRecord(SetSpeicalDrugRecord value,out string msg);

        /// <summary>
        /// 删除设置重点药品记录表
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteSetSpeicalDrugRecord(Guid id, out string msg);

        /// <summary>
        /// 保存设置重点药品记录表
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveSetSpeicalDrugRecord(SetSpeicalDrugRecord value, out string msg);  

		/// <summary>
        /// 所有记录设置重点药品记录表
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SetSpeicalDrugRecord> AllSetSpeicalDrugRecords(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SetSpeicalDrugRecord> QuerySetSpeicalDrugRecords(int maintainduetimefrom,int maintainduetimeto,string reason,string maintainemphasis,string memo,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SetSpeicalDrugRecord> QueryPagedSetSpeicalDrugRecords(int maintainduetimefrom,int maintainduetimeto,string reason,string maintainemphasis,string memo,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SetSpeicalDrugRecord> SearchSetSpeicalDrugRecordsByQueryModel(QuerySetSpeicalDrugRecordModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SetSpeicalDrugRecord> SearchPagedSetSpeicalDrugRecordsByQueryModel(QuerySetSpeicalDrugRecordModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 设置重点药品记录表 
		   
		#region 特殊管理药物类型

		/// <summary>
        /// 获取实体特殊管理药物类型
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        SpecialDrugCategory GetSpecialDrugCategory(Guid id,out string message);   

		/// <summary>
        /// 添加特殊管理药物类型
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddSpecialDrugCategory(SpecialDrugCategory value,out string msg);

        /// <summary>
        /// 删除特殊管理药物类型
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteSpecialDrugCategory(Guid id, out string msg);

        /// <summary>
        /// 保存特殊管理药物类型
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveSpecialDrugCategory(SpecialDrugCategory value, out string msg);  

		/// <summary>
        /// 所有记录特殊管理药物类型
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SpecialDrugCategory> AllSpecialDrugCategorys(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SpecialDrugCategory> QuerySpecialDrugCategorys(string name,string decription,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SpecialDrugCategory> QueryPagedSpecialDrugCategorys(string name,string decription,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SpecialDrugCategory> SearchSpecialDrugCategorysByQueryModel(QuerySpecialDrugCategoryModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SpecialDrugCategory> SearchPagedSpecialDrugCategorysByQueryModel(QuerySpecialDrugCategoryModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 特殊管理药物类型 
		   
		#region 门店

		/// <summary>
        /// 获取实体门店
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        Store GetStore(Guid id,out string message);   

		/// <summary>
        /// 添加门店
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddStore(Store value,out string msg);

        /// <summary>
        /// 删除门店
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteStore(Guid id, out string msg);

        /// <summary>
        /// 保存门店
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveStore(Store value, out string msg);  

		/// <summary>
        /// 所有记录门店
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Store> AllStores(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Store> QueryStores(string name,string decription,string code,bool enabled,bool queryenabled,string address,string tel,string head,int storetypevaluefrom,int storetypevalueto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Store> QueryPagedStores(string name,string decription,string code,bool enabled,bool queryenabled,string address,string tel,string head,int storetypevaluefrom,int storetypevalueto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Store> SearchStoresByQueryModel(QueryStoreModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Store> SearchPagedStoresByQueryModel(QueryStoreModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 门店 
		   
		#region 供货单位

		/// <summary>
        /// 获取实体供货单位
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        SupplyUnit GetSupplyUnit(Guid id,out string message);   

		/// <summary>
        /// 添加供货单位
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddSupplyUnit(SupplyUnit value,out string msg);

        /// <summary>
        /// 删除供货单位
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteSupplyUnit(Guid id, out string msg);

        /// <summary>
        /// 保存供货单位
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveSupplyUnit(SupplyUnit value, out string msg);  

		/// <summary>
        /// 所有记录供货单位
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SupplyUnit> AllSupplyUnits(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SupplyUnit> QuerySupplyUnits(bool isqualityagreementout,bool queryisqualityagreementout,DateTime qualityagreementoutdatefrom,DateTime qualityagreementoutdateto,bool isattorneyaattorneyout,bool queryisattorneyaattorneyout,DateTime attorneyaattorneyoutdatefrom,DateTime attorneyaattorneyoutdateto,string supplyproductclass,string qualitycharger,string bankaccountname,string bank,string bankaccount,bool valid,bool queryvalid,string validremark,bool islock,bool queryislock,string lockremark,string name,string code,string pinyincode,string contactname,string contacttel,string description,string legalperson,string header,string businessscope,string salesamount,string fax,string email,string webaddress,bool isoutdate,bool queryisoutdate,DateTime outdatefrom,DateTime outdateto,bool isgsplicenseoutdate,bool queryisgsplicenseoutdate,DateTime gsplicenseoutdatefrom,DateTime gsplicenseoutdateto,bool isgmplicenseoutdate,bool queryisgmplicenseoutdate,DateTime gmplicenseoutdatefrom,DateTime gmplicenseoutdateto,bool isbusinesslicenseoutdate,bool queryisbusinesslicenseoutdate,DateTime businesslicenseeoutdatefrom,DateTime businesslicenseeoutdateto,bool ismedicineproductionlicenseoutdate,bool queryismedicineproductionlicenseoutdate,DateTime medicineproductionlicenseoutdatefrom,DateTime medicineproductionlicenseoutdateto,bool ismedicinebusinesslicenseoutdate,bool queryismedicinebusinesslicenseoutdate,DateTime medicinebusinesslicenseoutdatefrom,DateTime medicinebusinesslicenseoutdateto,bool isinstrumentsproductionlicenseoutdate,bool queryisinstrumentsproductionlicenseoutdate,DateTime instrumentsproductionlicenseoutdatefrom,DateTime instrumentsproductionlicenseoutdateto,bool isinstrumentsbusinesslicenseoutdate,bool queryisinstrumentsbusinesslicenseoutdate,DateTime instrumentsbusinesslicenseoutdatefrom,DateTime instrumentsbusinesslicenseoutdateto,string taxregistrationcode,DateTime lastannualdtefrom,DateTime lastannualdteto,bool isapproval,bool queryisapproval,int approvalstatusvaluefrom,int approvalstatusvalueto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SupplyUnit> QueryPagedSupplyUnits(bool isqualityagreementout,bool queryisqualityagreementout,DateTime qualityagreementoutdatefrom,DateTime qualityagreementoutdateto,bool isattorneyaattorneyout,bool queryisattorneyaattorneyout,DateTime attorneyaattorneyoutdatefrom,DateTime attorneyaattorneyoutdateto,string supplyproductclass,string qualitycharger,string bankaccountname,string bank,string bankaccount,bool valid,bool queryvalid,string validremark,bool islock,bool queryislock,string lockremark,string name,string code,string pinyincode,string contactname,string contacttel,string description,string legalperson,string header,string businessscope,string salesamount,string fax,string email,string webaddress,bool isoutdate,bool queryisoutdate,DateTime outdatefrom,DateTime outdateto,bool isgsplicenseoutdate,bool queryisgsplicenseoutdate,DateTime gsplicenseoutdatefrom,DateTime gsplicenseoutdateto,bool isgmplicenseoutdate,bool queryisgmplicenseoutdate,DateTime gmplicenseoutdatefrom,DateTime gmplicenseoutdateto,bool isbusinesslicenseoutdate,bool queryisbusinesslicenseoutdate,DateTime businesslicenseeoutdatefrom,DateTime businesslicenseeoutdateto,bool ismedicineproductionlicenseoutdate,bool queryismedicineproductionlicenseoutdate,DateTime medicineproductionlicenseoutdatefrom,DateTime medicineproductionlicenseoutdateto,bool ismedicinebusinesslicenseoutdate,bool queryismedicinebusinesslicenseoutdate,DateTime medicinebusinesslicenseoutdatefrom,DateTime medicinebusinesslicenseoutdateto,bool isinstrumentsproductionlicenseoutdate,bool queryisinstrumentsproductionlicenseoutdate,DateTime instrumentsproductionlicenseoutdatefrom,DateTime instrumentsproductionlicenseoutdateto,bool isinstrumentsbusinesslicenseoutdate,bool queryisinstrumentsbusinesslicenseoutdate,DateTime instrumentsbusinesslicenseoutdatefrom,DateTime instrumentsbusinesslicenseoutdateto,string taxregistrationcode,DateTime lastannualdtefrom,DateTime lastannualdteto,bool isapproval,bool queryisapproval,int approvalstatusvaluefrom,int approvalstatusvalueto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SupplyUnit> SearchSupplyUnitsByQueryModel(QuerySupplyUnitModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SupplyUnit> SearchPagedSupplyUnitsByQueryModel(QuerySupplyUnitModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 供货单位 
		   
		#region 供货商销售人员

		/// <summary>
        /// 获取实体供货商销售人员
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        SupplyUnitSalesman GetSupplyUnitSalesman(Guid id,out string message);   

		/// <summary>
        /// 添加供货商销售人员
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddSupplyUnitSalesman(SupplyUnitSalesman value,out string msg);

        /// <summary>
        /// 删除供货商销售人员
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteSupplyUnitSalesman(Guid id, out string msg);

        /// <summary>
        /// 保存供货商销售人员
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveSupplyUnitSalesman(SupplyUnitSalesman value, out string msg);  

		/// <summary>
        /// 所有记录供货商销售人员
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SupplyUnitSalesman> AllSupplyUnitSalesmans(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SupplyUnitSalesman> QuerySupplyUnitSalesmans(DateTime outdatefrom,DateTime outdateto,string name,string idnumber,string tel,string address,DateTime birthdayfrom,DateTime birthdayto,string gender,bool enabled,bool queryenabled,bool valid,bool queryvalid,bool isoutdate,bool queryisoutdate,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string businessscopes,bool ischecked,bool queryischecked,string idchecktype,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SupplyUnitSalesman> QueryPagedSupplyUnitSalesmans(DateTime outdatefrom,DateTime outdateto,string name,string idnumber,string tel,string address,DateTime birthdayfrom,DateTime birthdayto,string gender,bool enabled,bool queryenabled,bool valid,bool queryvalid,bool isoutdate,bool queryisoutdate,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string businessscopes,bool ischecked,bool queryischecked,string idchecktype,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SupplyUnitSalesman> SearchSupplyUnitSalesmansByQueryModel(QuerySupplyUnitSalesmanModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<SupplyUnitSalesman> SearchPagedSupplyUnitSalesmansByQueryModel(QuerySupplyUnitSalesmanModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 供货商销售人员 
		   
		#region 税率

		/// <summary>
        /// 获取实体税率
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        TaxRate GetTaxRate(Guid id,out string message);   

		/// <summary>
        /// 添加税率
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddTaxRate(TaxRate value,out string msg);

        /// <summary>
        /// 删除税率
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteTaxRate(Guid id, out string msg);

        /// <summary>
        /// 保存税率
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveTaxRate(TaxRate value, out string msg);  

		/// <summary>
        /// 所有记录税率
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<TaxRate> AllTaxRates(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<TaxRate> QueryTaxRates(string name,string code,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<TaxRate> QueryPagedTaxRates(string name,string code,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<TaxRate> SearchTaxRatesByQueryModel(QueryTaxRateModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<TaxRate> SearchPagedTaxRatesByQueryModel(QueryTaxRateModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 税率 
		   
		#region 企业类型

		/// <summary>
        /// 获取实体企业类型
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        UnitType GetUnitType(Guid id,out string message);   

		/// <summary>
        /// 添加企业类型
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddUnitType(UnitType value,out string msg);

        /// <summary>
        /// 删除企业类型
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteUnitType(Guid id, out string msg);

        /// <summary>
        /// 保存企业类型
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveUnitType(UnitType value, out string msg);  

		/// <summary>
        /// 所有记录企业类型
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<UnitType> AllUnitTypes(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<UnitType> QueryUnitTypes(string name,bool enabled,bool queryenabled,string decription,string code,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<UnitType> QueryPagedUnitTypes(string name,bool enabled,bool queryenabled,string decription,string code,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<UnitType> SearchUnitTypesByQueryModel(QueryUnitTypeModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<UnitType> SearchPagedUnitTypesByQueryModel(QueryUnitTypeModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 企业类型 
		   
		#region 数据上传记录

		/// <summary>
        /// 获取实体数据上传记录
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        UploadRecord GetUploadRecord(Guid id,out string message);   

		/// <summary>
        /// 添加数据上传记录
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddUploadRecord(UploadRecord value,out string msg);

        /// <summary>
        /// 删除数据上传记录
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteUploadRecord(Guid id, out string msg);

        /// <summary>
        /// 保存数据上传记录
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveUploadRecord(UploadRecord value, out string msg);  

		/// <summary>
        /// 所有记录数据上传记录
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<UploadRecord> AllUploadRecords(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<UploadRecord> QueryUploadRecords(string tablename,int indexfrom,int indexto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<UploadRecord> QueryPagedUploadRecords(string tablename,int indexfrom,int indexto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<UploadRecord> SearchUploadRecordsByQueryModel(QueryUploadRecordModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<UploadRecord> SearchPagedUploadRecordsByQueryModel(QueryUploadRecordModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 数据上传记录 
		   
		#region 系统用户

		/// <summary>
        /// 获取实体系统用户
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        User GetUser(Guid id,out string message);   

		/// <summary>
        /// 添加系统用户
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddUser(User value,out string msg);

        /// <summary>
        /// 删除系统用户
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteUser(Guid id, out string msg);

        /// <summary>
        /// 保存系统用户
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveUser(User value, out string msg);  

		/// <summary>
        /// 所有记录系统用户
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<User> AllUsers(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<User> QueryUsers(string account,string pwd,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,bool enabled,bool queryenabled,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<User> QueryPagedUsers(string account,string pwd,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,bool enabled,bool queryenabled,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<User> SearchUsersByQueryModel(QueryUserModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<User> SearchPagedUsersByQueryModel(QueryUserModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 系统用户 
		   
		#region 用户日志

		/// <summary>
        /// 获取实体用户日志
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        UserLog GetUserLog(Guid id,out string message);   

		/// <summary>
        /// 添加用户日志
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddUserLog(UserLog value,out string msg);

        /// <summary>
        /// 删除用户日志
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteUserLog(Guid id, out string msg);

        /// <summary>
        /// 保存用户日志
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveUserLog(UserLog value, out string msg);  

		/// <summary>
        /// 所有记录用户日志
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<UserLog> AllUserLogs(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<UserLog> QueryUserLogs(DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string content,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<UserLog> QueryPagedUserLogs(DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string content,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<UserLog> SearchUserLogsByQueryModel(QueryUserLogModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<UserLog> SearchPagedUserLogsByQueryModel(QueryUserLogModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 用户日志 
		   
		#region 车辆

		/// <summary>
        /// 获取实体车辆
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        Vehicle GetVehicle(Guid id,out string message);   

		/// <summary>
        /// 添加车辆
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddVehicle(Vehicle value,out string msg);

        /// <summary>
        /// 删除车辆
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteVehicle(Guid id, out string msg);

        /// <summary>
        /// 保存车辆
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveVehicle(Vehicle value, out string msg);  

		/// <summary>
        /// 所有记录车辆
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Vehicle> AllVehicles(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Vehicle> QueryVehicles(string type,int vehiclecategoryvaluefrom,int vehiclecategoryvalueto,string cubage,string licenseplate,string rule,string other,string driver,bool status,bool querystatus,bool isoutcheck,bool queryisoutcheck,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Vehicle> QueryPagedVehicles(string type,int vehiclecategoryvaluefrom,int vehiclecategoryvalueto,string cubage,string licenseplate,string rule,string other,string driver,bool status,bool querystatus,bool isoutcheck,bool queryisoutcheck,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Vehicle> SearchVehiclesByQueryModel(QueryVehicleModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Vehicle> SearchPagedVehiclesByQueryModel(QueryVehicleModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 车辆 
		   
		#region 仓库

		/// <summary>
        /// 获取实体仓库
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        Warehouse GetWarehouse(Guid id,out string message);   

		/// <summary>
        /// 添加仓库
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddWarehouse(Warehouse value,out string msg);

        /// <summary>
        /// 删除仓库
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteWarehouse(Guid id, out string msg);

        /// <summary>
        /// 保存仓库
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveWarehouse(Warehouse value, out string msg);  

		/// <summary>
        /// 所有记录仓库
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Warehouse> AllWarehouses(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Warehouse> QueryWarehouses(string name,string code,string mnemoniccode,string address,string managementcompany,string phone,string rentcompany,string rentyear,string area,string shadearea,string normalarea,string coldarea,string ypfzarea,string yhyssarea,string phcarea,string tyzqarea,string dwarea,string decription,bool enabled,bool queryenabled,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Warehouse> QueryPagedWarehouses(string name,string code,string mnemoniccode,string address,string managementcompany,string phone,string rentcompany,string rentyear,string area,string shadearea,string normalarea,string coldarea,string ypfzarea,string yhyssarea,string phcarea,string tyzqarea,string dwarea,string decription,bool enabled,bool queryenabled,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Warehouse> SearchWarehousesByQueryModel(QueryWarehouseModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<Warehouse> SearchPagedWarehousesByQueryModel(QueryWarehouseModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 仓库 
		   
		#region 库区

		/// <summary>
        /// 获取实体库区
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        WarehouseZone GetWarehouseZone(Guid id,out string message);   

		/// <summary>
        /// 添加库区
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddWarehouseZone(WarehouseZone value,out string msg);

        /// <summary>
        /// 删除库区
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteWarehouseZone(Guid id, out string msg);

        /// <summary>
        /// 保存库区
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveWarehouseZone(WarehouseZone value, out string msg);  

		/// <summary>
        /// 所有记录库区
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<WarehouseZone> AllWarehouseZones(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<WarehouseZone> QueryWarehouseZones(string name,string decription,string code,string mnemoniccode,string area,bool enabled,bool queryenabled,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int warehousezonetypevaluefrom,int warehousezonetypevalueto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<WarehouseZone> QueryPagedWarehouseZones(string name,string decription,string code,string mnemoniccode,string area,bool enabled,bool queryenabled,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,int warehousezonetypevaluefrom,int warehousezonetypevalueto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<WarehouseZone> SearchWarehouseZonesByQueryModel(QueryWarehouseZoneModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<WarehouseZone> SearchPagedWarehouseZonesByQueryModel(QueryWarehouseZoneModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 库区 
		   
		#region 报警设置

		/// <summary>
        /// 获取实体报警设置
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        WaringSet GetWaringSet(Guid id,out string message);   

		/// <summary>
        /// 添加报警设置
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddWaringSet(WaringSet value,out string msg);

        /// <summary>
        /// 删除报警设置
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteWaringSet(Guid id, out string msg);

        /// <summary>
        /// 保存报警设置
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveWaringSet(WaringSet value, out string msg);  

		/// <summary>
        /// 所有记录报警设置
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<WaringSet> AllWaringSets(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<WaringSet> QueryWaringSets(string code,string name,string setvalue,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<WaringSet> QueryPagedWaringSets(string code,string name,string setvalue,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<WaringSet> SearchWaringSetsByQueryModel(QueryWaringSetModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<WaringSet> SearchPagedWaringSetsByQueryModel(QueryWaringSetModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 报警设置 
		   
		#region 销售出库单

		/// <summary>
        /// 获取实体销售出库单
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        OutInventoryDetail GetOutInventoryDetail(Guid id,out string message);   

		/// <summary>
        /// 添加销售出库单
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddOutInventoryDetail(OutInventoryDetail value,out string msg);

        /// <summary>
        /// 删除销售出库单
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteOutInventoryDetail(Guid id, out string msg);

        /// <summary>
        /// 保存销售出库单
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveOutInventoryDetail(OutInventoryDetail value, out string msg);  

		/// <summary>
        /// 所有记录销售出库单
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<OutInventoryDetail> AllOutInventoryDetails(out string message);  

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<OutInventoryDetail> QueryOutInventoryDetails(int indexfrom,int indexto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string productname,string productcode,string dictionarydosagecode,string origin,string batchnumber,int amountfrom,int amountto,decimal unitpricefrom,decimal unitpriceto,decimal actualunitpricefrom,decimal actualunitpriceto,decimal pricefrom,decimal priceto,string measurementunit,string specificationcode,DateTime pruductdatefrom,DateTime pruductdateto,DateTime outvaliddatefrom,DateTime outvaliddateto,string factoryname,string description,int outamountfrom,int outamountto,string warehousecode,string warehousename,string warehousezonecode,string warehousezonename,int cansalenumfrom,int cansalenumto,out string msg);

		
        [OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<OutInventoryDetail> QueryPagedOutInventoryDetails(int indexfrom,int indexto,DateTime createtimefrom,DateTime createtimeto,DateTime updatetimefrom,DateTime updatetimeto,string productname,string productcode,string dictionarydosagecode,string origin,string batchnumber,int amountfrom,int amountto,decimal unitpricefrom,decimal unitpriceto,decimal actualunitpricefrom,decimal actualunitpriceto,decimal pricefrom,decimal priceto,string measurementunit,string specificationcode,DateTime pruductdatefrom,DateTime pruductdateto,DateTime outvaliddatefrom,DateTime outvaliddateto,string factoryname,string description,int outamountfrom,int outamountto,string warehousecode,string warehousename,string warehousezonecode,string warehousezonename,int cansalenumfrom,int cansalenumto,int index,int size,out PagerInfo pager); 

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<OutInventoryDetail> SearchOutInventoryDetailsByQueryModel(QueryOutInventoryDetailModel qModel,out string message);  

		[OperationContract]
	    [FaultContract(typeof(ServiceExceptionDetail))]
        List<OutInventoryDetail> SearchPagedOutInventoryDetailsByQueryModel(QueryOutInventoryDetailModel qModel,int index,int size,out PagerInfo pager); 

		#endregion 销售出库单 

        #region 首营供货个人

        /// <summary>
        /// 获取实体首营供货个人
        /// </summary>
        /// <param name="id"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        [OperationContract]
        [FaultContract(typeof(ServiceExceptionDetail))]
        SupplyPerson GetSupplyPerson(Guid id, out string message);

        /// <summary>
        /// 添加购货单位提货人员
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
        [OperationContract]
        [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddSupplyPerson(SupplyPerson value, out string msg);

        /// <summary>
        /// 删除购货单位提货人员
        /// </summary>
        /// <param name="id"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
        [OperationContract]
        [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteSupplyPerson(Guid id, out string msg);

        /// <summary>
        /// 保存购货单位提货人员
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
        [OperationContract]
        [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveSupplyPerson(SupplyPerson value, out string msg);

        /// <summary>
        /// 所有记录购货单位提货人员
        /// </summary>
        /// <param name="message"></param>
        /// <returns></returns>
        [OperationContract]
        [FaultContract(typeof(ServiceExceptionDetail))]
        List<SupplyPerson> AllSupplyPersons(out string message);


        //[OperationContract]
        //[FaultContract(typeof(ServiceExceptionDetail))]
        //List<SupplyPerson> QuerySupplyPersons(string name, string idfile, string idnumber, string tel, string address, DateTime birthdayfrom, DateTime birthdayto, string gender, DateTime createtimefrom, DateTime createtimeto, DateTime updatetimefrom, DateTime updatetimeto, bool valid, bool queryvalid, bool enabled, bool queryenabled, out string msg);


        //[OperationContract]
        //[FaultContract(typeof(ServiceExceptionDetail))]
        //List<SupplyPerson> QueryPagedSupplyPersons(string name, string idfile, string idnumber, string tel, string address, DateTime birthdayfrom, DateTime birthdayto, string gender, DateTime createtimefrom, DateTime createtimeto, DateTime updatetimefrom, DateTime updatetimeto, bool valid, bool queryvalid, bool enabled, bool queryenabled, int index, int size, out PagerInfo pager);

        [OperationContract]
        [FaultContract(typeof(ServiceExceptionDetail))]
        List<SupplyPerson> SearchSupplyPersonsByQueryModel(QuerySupplyPersonModel qModel, out string message);

        //[OperationContract]
        //[FaultContract(typeof(ServiceExceptionDetail))]
        //List<SupplyPerson> SearchPagedSupplyPersonsByQueryModel(QuerySupplyPersonModel qModel, int index, int size, out PagerInfo pager);

        #endregion 购货单位提货人员 

        #region 不合格药品信息，实体新增，更新，删除
        /// <summary>
        /// 添加药品不合格
        /// </summary>
        /// <param name="value"></param>
        /// <param name="msg"></param>
        /// <returns></returns>
        [OperationContract]
        [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDrugsUnqualification(drugsUnqualication value, out string msg);

        [OperationContract]
        [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDrugsUnqualification(drugsUnqualication value, out string msg);

        [OperationContract]
        [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDrugsUnqualification(Guid ItemID, out string msg);
        #endregion

//update 2014-2-11
        #region 不合格药品销毁信息，实体新增，更新，删除
        [OperationContract]
        [FaultContract(typeof(ServiceExceptionDetail))]
        bool AddDrugsUnqualificationDestroy(DrugsUnqualificationDestroy value, out string msg);

        [OperationContract]
        [FaultContract(typeof(ServiceExceptionDetail))]
        bool SaveDrugsUnqualificationDestroy(DrugsUnqualificationDestroy value, out string msg);

        [OperationContract]
        [FaultContract(typeof(ServiceExceptionDetail))]
        bool DeleteDrugsUnqualificationDestroy(Guid ItemID, out string msg);
        #endregion
      }
}
