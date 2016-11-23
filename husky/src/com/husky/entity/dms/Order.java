package com.husky.entity.dms;


/**
 * 
* 类名称：Order.java
* 类描述： 
* @author husky
* @version 1.0
 */
public class Order{

	
	private String ORDERNO; // 订单号	卖家后台登录能看到成交的订单号
		
	
	private String BUYERID; // 买家ID	示例值：ff808081416839d5014168e43ab30033
		
	
	private String BUYERCONFIRMDATE; // 买家确认收货时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒
		
	
	private String BUYERNICKNAME; // 买家别名	买家昵称
		
	
	private String CANCELDATE; // 交易取消时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒
		
	
	private String COUNTRY; // 收货国家	示例值
		
	
	private String DELIVERYDATE; // 发货时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒
		
	
	private String DELIVERYDEADLINE; // 发货截止时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒
		
	
	private String INACCOUNTDATE; // 入账时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒
		
	
	private String ISWARN; // 是否需要特别注意的订单（如高风险订单、售后纠纷订单等）	值为false或null表示订单正常，true表示此订单需要特别注意一下，例如，防止高风险订单直接发货
		
	
	private String ORDERREMARK; // 订单备注
		
	
	private String ORDERSTATUS; // 订单状态	111000,订单取消;101003,等待买家付款;102001,买家已付款，等待平台确认;103001,等待发货;105001,买家申请退款，等待协商结果;105002,退款协议已达成;105003,部分退款后，等待发货;105004,买家取消退款申请;103002,已部分发货;101009,等待买家确认收货;106001,退款/退货协商中，等待协议达成;106002,买家投诉到平台;106003,协议已达成，执行中;102006,人工确认收货;102007,超过预定期限，自动确认收货;102111,交易成功;111111,交易关闭
		
	
	private String ORDERTOTALPRICE; // 订单总金额
		
	
	private String PAYDATE; // 付款时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒
		
	
	private String STARTEDDATE; // 下单日期	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒
		
	
	private String WARNREASON; // 警告原因	示例值：高风险订单、订单发起售后纠纷、信用卡拒付等
		

	public String getORDERNO() {
		return ORDERNO;
	}
	public void setORDERNO(String _ORDERNO) {
		ORDERNO = _ORDERNO;
	}
		
	public String getBUYERID() {
		return BUYERID;
	}
	public void setBUYERID(String _BUYERID) {
		BUYERID = _BUYERID;
	}
		
	public String getBUYERCONFIRMDATE() {
		return BUYERCONFIRMDATE;
	}
	public void setBUYERCONFIRMDATE(String _BUYERCONFIRMDATE) {
		BUYERCONFIRMDATE = _BUYERCONFIRMDATE;
	}
		
	public String getBUYERNICKNAME() {
		return BUYERNICKNAME;
	}
	public void setBUYERNICKNAME(String _BUYERNICKNAME) {
		BUYERNICKNAME = _BUYERNICKNAME;
	}
		
	public String getCANCELDATE() {
		return CANCELDATE;
	}
	public void setCANCELDATE(String _CANCELDATE) {
		CANCELDATE = _CANCELDATE;
	}
		
	public String getCOUNTRY() {
		return COUNTRY;
	}
	public void setCOUNTRY(String _COUNTRY) {
		COUNTRY = _COUNTRY;
	}
		
	public String getDELIVERYDATE() {
		return DELIVERYDATE;
	}
	public void setDELIVERYDATE(String _DELIVERYDATE) {
		DELIVERYDATE = _DELIVERYDATE;
	}
		
	public String getDELIVERYDEADLINE() {
		return DELIVERYDEADLINE;
	}
	public void setDELIVERYDEADLINE(String _DELIVERYDEADLINE) {
		DELIVERYDEADLINE = _DELIVERYDEADLINE;
	}
		
	public String getINACCOUNTDATE() {
		return INACCOUNTDATE;
	}
	public void setINACCOUNTDATE(String _INACCOUNTDATE) {
		INACCOUNTDATE = _INACCOUNTDATE;
	}
		
	public String getISWARN() {
		return ISWARN;
	}
	public void setISWARN(String _ISWARN) {
		ISWARN = _ISWARN;
	}
		
	public String getORDERREMARK() {
		return ORDERREMARK;
	}
	public void setORDERREMARK(String _ORDERREMARK) {
		ORDERREMARK = _ORDERREMARK;
	}
		
	public String getORDERSTATUS() {
		return ORDERSTATUS;
	}
	public void setORDERSTATUS(String _ORDERSTATUS) {
		ORDERSTATUS = _ORDERSTATUS;
	}
		
	public String getORDERTOTALPRICE() {
		return ORDERTOTALPRICE;
	}
	public void setORDERTOTALPRICE(String _ORDERTOTALPRICE) {
		ORDERTOTALPRICE = _ORDERTOTALPRICE;
	}
		
	public String getPAYDATE() {
		return PAYDATE;
	}
	public void setPAYDATE(String _PAYDATE) {
		PAYDATE = _PAYDATE;
	}
		
	public String getSTARTEDDATE() {
		return STARTEDDATE;
	}
	public void setSTARTEDDATE(String _STARTEDDATE) {
		STARTEDDATE = _STARTEDDATE;
	}
		
	public String getWARNREASON() {
		return WARNREASON;
	}
	public void setWARNREASON(String _WARNREASON) {
		WARNREASON = _WARNREASON;
	}
		
}