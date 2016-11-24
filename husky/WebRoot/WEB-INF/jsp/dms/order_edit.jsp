<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<base href="<%=basePath%>">
		<meta charset="utf-8" />
		<title></title>
		<meta name="description" content="overview & stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="static/css/bootstrap.min.css" rel="stylesheet" />
		<link href="static/css/bootstrap-responsive.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="static/css/font-awesome.min.css" />
		<!-- 下拉框 -->
		<link rel="stylesheet" href="static/css/chosen.css" />
		
		<link rel="stylesheet" href="static/css/ace.min.css" />
		<link rel="stylesheet" href="static/css/ace-responsive.min.css" />
		<link rel="stylesheet" href="static/css/ace-skins.min.css" />
		
		<link rel="stylesheet" href="static/css/datepicker.css" /><!-- 日期框 -->
		<script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		
<script type="text/javascript">
	
	
	//保存
	function save(){
			if($("#ORDERNO").val()==""){
			$("#ORDERNO").tips({
				side:3,
	            msg:'请输入订单号	卖家后台登录能看到成交的订单号；示例值：1330312162',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ORDERNO").focus();
			return false;
		}
		if($("#ACTUALPRICE").val()==""){
			$("#ACTUALPRICE").tips({
				side:3,
	            msg:'请输入实收金额	示例值:100.00',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ACTUALPRICE").focus();
			return false;
		}
		if($("#COMMISSIONAMOUNT").val()==""){
			$("#COMMISSIONAMOUNT").tips({
				side:3,
	            msg:'请输入佣金金额	示例值:100.00',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#COMMISSIONAMOUNT").focus();
			return false;
		}
		if($("#DELIVERYDATE").val()==""){
			$("#DELIVERYDATE").tips({
				side:3,
	            msg:'请输入发货时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒；示例值：2014-01-12 18:20:21',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#DELIVERYDATE").focus();
			return false;
		}
		if($("#DELIVERYDEADLINE").val()==""){
			$("#DELIVERYDEADLINE").tips({
				side:3,
	            msg:'请输入发货截止时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒；示例值：2014-01-12 18:20:21',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#DELIVERYDEADLINE").focus();
			return false;
		}
		if($("#FILLINGMONEY").val()==""){
			$("#FILLINGMONEY").tips({
				side:3,
	            msg:'请输入订单补款金额	示例值:100.00',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#FILLINGMONEY").focus();
			return false;
		}
		if($("#GATEWAYFEE").val()==""){
			$("#GATEWAYFEE").tips({
				side:3,
	            msg:'请输入网关手续费	示例值:100.00',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#GATEWAYFEE").focus();
			return false;
		}
		if($("#ITEMTOTALPRICE").val()==""){
			$("#ITEMTOTALPRICE").tips({
				side:3,
	            msg:'请输入产品总计	示例值:100.00',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ITEMTOTALPRICE").focus();
			return false;
		}
		if($("#ORDERREMARK").val()==""){
			$("#ORDERREMARK").tips({
				side:3,
	            msg:'请输入订单备注	蓝色要10个，加急，圣诞前要用到等等备注信息',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ORDERREMARK").focus();
			return false;
		}
		if($("#ORDERSTATUS").val()==""){
			$("#ORDERSTATUS").tips({
				side:3,
	            msg:'请输入订单状态	111000,订单取消;101003,等待买家付款;102001,买家已付款，等待平台确认;103001,等待发货;105001,买家申请退款，等待协商结果;105002,退款协议已达成;105003,部分退款后，等待发货;105004,买家取消退款申请;103002,已部分发货;101009,等待买家确认收货;106001,退款/退货协商中，等待协议达成;106002,买家投诉到平台;106003,协议已达成，执行中;102006,人工确认收货;102007,超过预定期限，自动确认收货;102111,交易成功;111111,交易关闭',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ORDERSTATUS").focus();
			return false;
		}
		if($("#ORDERTOTALPRICE").val()==""){
			$("#ORDERTOTALPRICE").tips({
				side:3,
	            msg:'请输入订单总额	示例值:100.00',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ORDERTOTALPRICE").focus();
			return false;
		}
		if($("#PAYDATE").val()==""){
			$("#PAYDATE").tips({
				side:3,
	            msg:'请输入付款时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒；示例值：2014-01-12 18:20:21',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#PAYDATE").focus();
			return false;
		}
		if($("#REDUCEPRICE").val()==""){
			$("#REDUCEPRICE").tips({
				side:3,
	            msg:'请输入订单降价金额	示例值:100.00',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#REDUCEPRICE").focus();
			return false;
		}
		if($("#REFUNDMONEY").val()==""){
			$("#REFUNDMONEY").tips({
				side:3,
	            msg:'请输入订单退款金额	示例值:100.00',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#REFUNDMONEY").focus();
			return false;
		}
		if($("#RISEPRICE").val()==""){
			$("#RISEPRICE").tips({
				side:3,
	            msg:'请输入订单涨价金额	示例值:100.00',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#RISEPRICE").focus();
			return false;
		}
		if($("#SELLERCOUPONPRICE").val()==""){
			$("#SELLERCOUPONPRICE").tips({
				side:3,
	            msg:'请输入seller优惠券	示例值:100.00',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#SELLERCOUPONPRICE").focus();
			return false;
		}
		if($("#SHIPPINGCOST").val()==""){
			$("#SHIPPINGCOST").tips({
				side:3,
	            msg:'请输入运费	示例值:100.00',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#SHIPPINGCOST").focus();
			return false;
		}
		if($("#SHIPPINGTYPE").val()==""){
			$("#SHIPPINGTYPE").tips({
				side:3,
	            msg:'请输入买家选择物流方式	示例值：UPS,D-LINK等',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#SHIPPINGTYPE").focus();
			return false;
		}
		if($("#STARTEDDATE").val()==""){
			$("#STARTEDDATE").tips({
				side:3,
	            msg:'请输入下单日期',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#STARTEDDATE").focus();
			return false;
		}
		$("#Form").submit();
		$("#zhongxin").hide();
		$("#zhongxin2").show();
	}
	
</script>
	</head>
<body>
	<form action="order/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="ORDER_ID" id="ORDER_ID" value="${pd.ORDER_ID}"/>
		<div id="zhongxin">
		<table id="table_report" class="table table-striped table-bordered table-hover">
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">订单号:</td>
				<td><input type="text" name="ORDERNO" id="ORDERNO" value="${pd.ORDERNO}" maxlength="32" placeholder="这里输入订单号	卖家后台登录能看到成交的订单号；示例值：1330312162" title="订单号	卖家后台登录能看到成交的订单号；示例值：1330312162"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">实收金额:</td>
				<td><input type="text" name="ACTUALPRICE" id="ACTUALPRICE" value="${pd.ACTUALPRICE}" maxlength="32" placeholder="这里输入实收金额	示例值:100.00" title="实收金额	示例值:100.00"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">佣金金额:</td>
				<td><input type="text" name="COMMISSIONAMOUNT" id="COMMISSIONAMOUNT" value="${pd.COMMISSIONAMOUNT}" maxlength="32" placeholder="这里输入佣金金额	示例值:100.00" title="佣金金额	示例值:100.00"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">发货时间:</td>
				<td><input type="text" name="DELIVERYDATE" id="DELIVERYDATE" value="${pd.DELIVERYDATE}" maxlength="32" placeholder="这里输入发货时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒；示例值：2014-01-12 18:20:21" title="发货时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒；示例值：2014-01-12 18:20:21"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">发货截止时间:</td>
				<td><input type="text" name="DELIVERYDEADLINE" id="DELIVERYDEADLINE" value="${pd.DELIVERYDEADLINE}" maxlength="32" placeholder="这里输入发货截止时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒；示例值：2014-01-12 18:20:21" title="发货截止时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒；示例值：2014-01-12 18:20:21"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">订单补款金额:</td>
				<td><input type="text" name="FILLINGMONEY" id="FILLINGMONEY" value="${pd.FILLINGMONEY}" maxlength="32" placeholder="这里输入订单补款金额	示例值:100.00" title="订单补款金额	示例值:100.00"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">网关手续费:</td>
				<td><input type="text" name="GATEWAYFEE" id="GATEWAYFEE" value="${pd.GATEWAYFEE}" maxlength="32" placeholder="这里输入网关手续费	示例值:100.00" title="网关手续费	示例值:100.00"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">产品总计:</td>
				<td><input type="text" name="ITEMTOTALPRICE" id="ITEMTOTALPRICE" value="${pd.ITEMTOTALPRICE}" maxlength="32" placeholder="这里输入产品总计	示例值:100.00" title="产品总计	示例值:100.00"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">订单备注:</td>
				<td><input type="text" name="ORDERREMARK" id="ORDERREMARK" value="${pd.ORDERREMARK}" maxlength="32" placeholder="这里输入订单备注	蓝色要10个，加急，圣诞前要用到等等备注信息" title="订单备注	蓝色要10个，加急，圣诞前要用到等等备注信息"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">订单状态:</td>
				<td><input type="text" name="ORDERSTATUS" id="ORDERSTATUS" value="${pd.ORDERSTATUS}" maxlength="32" placeholder="这里输入订单状态	"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">订单总额:</td>
				<td><input type="text" name="ORDERTOTALPRICE" id="ORDERTOTALPRICE" value="${pd.ORDERTOTALPRICE}" maxlength="32" placeholder="这里输入订单总额	示例值:100.00" title="订单总额	示例值:100.00"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">付款时间:</td>
				<td><input type="text" name="PAYDATE" id="PAYDATE" value="${pd.PAYDATE}" maxlength="32" placeholder="这里输入付款时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒；示例值：2014-01-12 18:20:21" title="付款时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒；示例值：2014-01-12 18:20:21"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">订单降价金额:</td>
				<td><input type="text" name="REDUCEPRICE" id="REDUCEPRICE" value="${pd.REDUCEPRICE}" maxlength="32" placeholder="这里输入订单降价金额	示例值:100.00" title="订单降价金额	示例值:100.00"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">订单退款金额:</td>
				<td><input type="text" name="REFUNDMONEY" id="REFUNDMONEY" value="${pd.REFUNDMONEY}" maxlength="32" placeholder="这里输入订单退款金额	示例值:100.00" title="订单退款金额	示例值:100.00"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">订单涨价金额:</td>
				<td><input type="text" name="RISEPRICE" id="RISEPRICE" value="${pd.RISEPRICE}" maxlength="32" placeholder="这里输入订单涨价金额	示例值:100.00" title="订单涨价金额	示例值:100.00"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">seller优惠券:</td>
				<td><input type="text" name="SELLERCOUPONPRICE" id="SELLERCOUPONPRICE" value="${pd.SELLERCOUPONPRICE}" maxlength="32" placeholder="这里输入seller优惠券	示例值:100.00" title="seller优惠券	示例值:100.00"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">运费:</td>
				<td><input type="text" name="SHIPPINGCOST" id="SHIPPINGCOST" value="${pd.SHIPPINGCOST}" maxlength="32" placeholder="这里输入运费	示例值:100.00" title="运费	示例值:100.00"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">买家选择物流方式:</td>
				<td><input type="text" name="SHIPPINGTYPE" id="SHIPPINGTYPE" value="${pd.SHIPPINGTYPE}" maxlength="32" placeholder="这里输入买家选择物流方式	示例值：UPS,D-LINK等" title="买家选择物流方式	示例值：UPS,D-LINK等"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">下单日期:</td>
				<td><input type="text" name="STARTEDDATE" id="STARTEDDATE" value="${pd.STARTEDDATE}" maxlength="32" placeholder="这里输入下单日期" title="下单日期"/></td>
			</tr>
			<tr>
				<td style="text-align: center;" colspan="10">
					<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
					<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
				</td>
			</tr>
		</table>
		</div>
		
		<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
		
	</form>
	
	
		<!-- 引入 -->
		<script type="text/javascript">window.jQuery || document.write("<script src='static/js/jquery-1.9.1.min.js'>\x3C/script>");</script>
		<script src="static/js/bootstrap.min.js"></script>
		<script src="static/js/ace-elements.min.js"></script>
		<script src="static/js/ace.min.js"></script>
		<script type="text/javascript" src="static/js/chosen.jquery.min.js"></script><!-- 下拉框 -->
		<script type="text/javascript" src="static/js/bootstrap-datepicker.min.js"></script><!-- 日期框 -->
		<script type="text/javascript">
		$(top.hangge());
		$(function() {
			
			//单选框
			$(".chzn-select").chosen(); 
			$(".chzn-select-deselect").chosen({allow_single_deselect:true}); 
			
			//日期框
			$('.date-picker').datepicker();
			
		});
		
		</script>
</body>
</html>