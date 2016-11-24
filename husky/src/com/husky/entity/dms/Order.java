package com.husky.entity.dms;


/**
 * 
* 类名称：Order.java
* 类描述： 
* @author husky
* @version 1.0
 */
public class Order{

	
	private String ORDERNO; // 订单号	卖家后台登录能看到成交的订单号；示例值：1330312162
		
	
	private Double ACTUALPRICE; // 实收金额	示例值:100.00
		
	
	private Double COMMISSIONAMOUNT; // 佣金金额	示例值:100.00
		
	
	private String DELIVERYDATE; // 发货时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒；示例值：2014-01-12 18:20:21
		
	
	private String DELIVERYDEADLINE; // 发货截止时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒；示例值：2014-01-12 18:20:21
		
	
	private Double FILLINGMONEY; // 订单补款金额	示例值:100.00
		
	
	private Double GATEWAYFEE; // 网关手续费	示例值:100.00
		
	
	private Double ITEMTOTALPRICE; // 产品总计	示例值:100.00
		
	
	private String ORDERREMARK; // 订单备注	蓝色要10个，加急，圣诞前要用到等等备注信息
		
	
	private String ORDERSTATUS; // 订单状态	111000,订单取消;101003,等待买家付款;102001,买家已付款，等待平台确认;103001,等待发货;105001,买家申请退款，等待协商结果;105002,退款协议已达成;105003,部分退款后，等待发货;105004,买家取消退款申请;103002,已部分发货;101009,等待买家确认收货;106001,退款/退货协商中，等待协议达成;106002,买家投诉到平台;106003,协议已达成，执行中;102006,人工确认收货;102007,超过预定期限，自动确认收货;102111,交易成功;111111,交易关闭
		
	
	private Double ORDERTOTALPRICE; // 订单总额	示例值:100.00
		
	
	private String PAYDATE; // 付款时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒；示例值：2014-01-12 18:20:21
		
	
	private Double REDUCEPRICE; // 订单降价金额	示例值:100.00
		
	
	private Double REFUNDMONEY; // 订单退款金额	示例值:100.00
		
	
	private Double RISEPRICE; // 订单涨价金额	示例值:100.00
		
	
	private Double SELLERCOUPONPRICE; // seller优惠券	示例值:100.00
		
	
	private Double SHIPPINGCOST; // 运费	示例值:100.00
		
	
	private String SHIPPINGTYPE; // 买家选择物流方式	示例值：UPS,D-LINK等
		
	
	private String STARTEDDATE; // 下单日期
		

	public String getORDERNO() {
		return ORDERNO;
	}
	public void setORDERNO(String _ORDERNO) {
		ORDERNO = _ORDERNO;
	}
		
	
	public Double getACTUALPRICE() {
		return ACTUALPRICE;
	}
	public void setACTUALPRICE(Double _ACTUALPRICE) {
		ACTUALPRICE = _ACTUALPRICE;
	}
		
	
	public Double getCOMMISSIONAMOUNT() {
		return COMMISSIONAMOUNT;
	}
	public void setCOMMISSIONAMOUNT(Double _COMMISSIONAMOUNT) {
		COMMISSIONAMOUNT = _COMMISSIONAMOUNT;
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
		
	
	public Double getFILLINGMONEY() {
		return FILLINGMONEY;
	}
	public void setFILLINGMONEY(Double _FILLINGMONEY) {
		FILLINGMONEY = _FILLINGMONEY;
	}
		
	
	public Double getGATEWAYFEE() {
		return GATEWAYFEE;
	}
	public void setGATEWAYFEE(Double _GATEWAYFEE) {
		GATEWAYFEE = _GATEWAYFEE;
	}
		
	
	public Double getITEMTOTALPRICE() {
		return ITEMTOTALPRICE;
	}
	public void setITEMTOTALPRICE(Double _ITEMTOTALPRICE) {
		ITEMTOTALPRICE = _ITEMTOTALPRICE;
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
		
	
	public Double getORDERTOTALPRICE() {
		return ORDERTOTALPRICE;
	}
	public void setORDERTOTALPRICE(Double _ORDERTOTALPRICE) {
		ORDERTOTALPRICE = _ORDERTOTALPRICE;
	}
		
	public String getPAYDATE() {
		return PAYDATE;
	}
	public void setPAYDATE(String _PAYDATE) {
		PAYDATE = _PAYDATE;
	}
		
	
	public Double getREDUCEPRICE() {
		return REDUCEPRICE;
	}
	public void setREDUCEPRICE(Double _REDUCEPRICE) {
		REDUCEPRICE = _REDUCEPRICE;
	}
		
	
	public Double getREFUNDMONEY() {
		return REFUNDMONEY;
	}
	public void setREFUNDMONEY(Double _REFUNDMONEY) {
		REFUNDMONEY = _REFUNDMONEY;
	}
		
	
	public Double getRISEPRICE() {
		return RISEPRICE;
	}
	public void setRISEPRICE(Double _RISEPRICE) {
		RISEPRICE = _RISEPRICE;
	}
		
	
	public Double getSELLERCOUPONPRICE() {
		return SELLERCOUPONPRICE;
	}
	public void setSELLERCOUPONPRICE(Double _SELLERCOUPONPRICE) {
		SELLERCOUPONPRICE = _SELLERCOUPONPRICE;
	}
		
	
	public Double getSHIPPINGCOST() {
		return SHIPPINGCOST;
	}
	public void setSHIPPINGCOST(Double _SHIPPINGCOST) {
		SHIPPINGCOST = _SHIPPINGCOST;
	}
		
	public String getSHIPPINGTYPE() {
		return SHIPPINGTYPE;
	}
	public void setSHIPPINGTYPE(String _SHIPPINGTYPE) {
		SHIPPINGTYPE = _SHIPPINGTYPE;
	}
		
	public String getSTARTEDDATE() {
		return STARTEDDATE;
	}
	public void setSTARTEDDATE(String _STARTEDDATE) {
		STARTEDDATE = _STARTEDDATE;
	}
		
}