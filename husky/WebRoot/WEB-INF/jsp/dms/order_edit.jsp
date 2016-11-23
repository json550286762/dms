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
	            msg:'请输入订单号	卖家后台登录能看到成交的订单号',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ORDERNO").focus();
			return false;
		}
		if($("#BUYERID").val()==""){
			$("#BUYERID").tips({
				side:3,
	            msg:'请输入买家ID	示例值：ff808081416839d5014168e43ab30033',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#BUYERID").focus();
			return false;
		}
		if($("#BUYERCONFIRMDATE").val()==""){
			$("#BUYERCONFIRMDATE").tips({
				side:3,
	            msg:'请输入买家确认收货时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#BUYERCONFIRMDATE").focus();
			return false;
		}
		if($("#BUYERNICKNAME").val()==""){
			$("#BUYERNICKNAME").tips({
				side:3,
	            msg:'请输入买家别名	买家昵称',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#BUYERNICKNAME").focus();
			return false;
		}
		if($("#CANCELDATE").val()==""){
			$("#CANCELDATE").tips({
				side:3,
	            msg:'请输入交易取消时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#CANCELDATE").focus();
			return false;
		}
		if($("#COUNTRY").val()==""){
			$("#COUNTRY").tips({
				side:3,
	            msg:'请输入收货国家	示例值',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#COUNTRY").focus();
			return false;
		}
		if($("#DELIVERYDATE").val()==""){
			$("#DELIVERYDATE").tips({
				side:3,
	            msg:'请输入发货时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#DELIVERYDATE").focus();
			return false;
		}
		if($("#DELIVERYDEADLINE").val()==""){
			$("#DELIVERYDEADLINE").tips({
				side:3,
	            msg:'请输入发货截止时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#DELIVERYDEADLINE").focus();
			return false;
		}
		if($("#INACCOUNTDATE").val()==""){
			$("#INACCOUNTDATE").tips({
				side:3,
	            msg:'请输入入账时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#INACCOUNTDATE").focus();
			return false;
		}
		if($("#ISWARN").val()==""){
			$("#ISWARN").tips({
				side:3,
	            msg:'请输入是否需要特别注意的订单（如高风险订单、售后纠纷订单等）	值为false或null表示订单正常，true表示此订单需要特别注意一下，例如，防止高风险订单直接发货',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ISWARN").focus();
			return false;
		}
		if($("#ORDERREMARK").val()==""){
			$("#ORDERREMARK").tips({
				side:3,
	            msg:'请输入订单备注',
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
	            msg:'请输入订单总金额',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ORDERTOTALPRICE").focus();
			return false;
		}
		if($("#PAYDATE").val()==""){
			$("#PAYDATE").tips({
				side:3,
	            msg:'请输入付款时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#PAYDATE").focus();
			return false;
		}
		if($("#STARTEDDATE").val()==""){
			$("#STARTEDDATE").tips({
				side:3,
	            msg:'请输入下单日期	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#STARTEDDATE").focus();
			return false;
		}
		if($("#WARNREASON").val()==""){
			$("#WARNREASON").tips({
				side:3,
	            msg:'请输入警告原因	示例值：高风险订单、订单发起售后纠纷、信用卡拒付等',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#WARNREASON").focus();
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
				<td style="width:70px;text-align: right;padding-top: 13px;">订单号	卖家后台登录能看到成交的订单号:</td>
				<td><input type="text" name="ORDERNO" id="ORDERNO" value="${pd.ORDERNO}" maxlength="32" placeholder="这里输入订单号	卖家后台登录能看到成交的订单号" title="订单号	卖家后台登录能看到成交的订单号"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">买家ID	示例值：ff808081416839d5014168e43ab30033:</td>
				<td><input type="text" name="BUYERID" id="BUYERID" value="${pd.BUYERID}" maxlength="32" placeholder="这里输入买家ID	示例值：ff808081416839d5014168e43ab30033" title="买家ID	示例值：ff808081416839d5014168e43ab30033"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">买家确认收货时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒:</td>
				<td><input type="text" name="BUYERCONFIRMDATE" id="BUYERCONFIRMDATE" value="${pd.BUYERCONFIRMDATE}" maxlength="32" placeholder="这里输入买家确认收货时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒" title="买家确认收货时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">买家别名	买家昵称:</td>
				<td><input type="text" name="BUYERNICKNAME" id="BUYERNICKNAME" value="${pd.BUYERNICKNAME}" maxlength="32" placeholder="这里输入买家别名	买家昵称" title="买家别名	买家昵称"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">交易取消时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒:</td>
				<td><input type="text" name="CANCELDATE" id="CANCELDATE" value="${pd.CANCELDATE}" maxlength="32" placeholder="这里输入交易取消时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒" title="交易取消时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">收货国家	示例值:</td>
				<td><input type="text" name="COUNTRY" id="COUNTRY" value="${pd.COUNTRY}" maxlength="32" placeholder="这里输入收货国家	示例值" title="收货国家	示例值"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">发货时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒:</td>
				<td><input type="text" name="DELIVERYDATE" id="DELIVERYDATE" value="${pd.DELIVERYDATE}" maxlength="32" placeholder="这里输入发货时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒" title="发货时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">发货截止时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒:</td>
				<td><input type="text" name="DELIVERYDEADLINE" id="DELIVERYDEADLINE" value="${pd.DELIVERYDEADLINE}" maxlength="32" placeholder="这里输入发货截止时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒" title="发货截止时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">入账时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒:</td>
				<td><input type="text" name="INACCOUNTDATE" id="INACCOUNTDATE" value="${pd.INACCOUNTDATE}" maxlength="32" placeholder="这里输入入账时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒" title="入账时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">是否需要特别注意的订单（如高风险订单、售后纠纷订单等）	值为false或null表示订单正常，true表示此订单需要特别注意一下，例如，防止高风险订单直接发货:</td>
				<td><input type="text" name="ISWARN" id="ISWARN" value="${pd.ISWARN}" maxlength="32" placeholder="这里输入是否需要特别注意的订单（如高风险订单、售后纠纷订单等）	值为false或null表示订单正常，true表示此订单需要特别注意一下，例如，防止高风险订单直接发货" title="是否需要特别注意的订单（如高风险订单、售后纠纷订单等）	值为false或null表示订单正常，true表示此订单需要特别注意一下，例如，防止高风险订单直接发货"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">订单备注:</td>
				<td><input type="text" name="ORDERREMARK" id="ORDERREMARK" value="${pd.ORDERREMARK}" maxlength="32" placeholder="这里输入订单备注" title="订单备注"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">订单状态	111000,订单取消;101003,等待买家付款;102001,买家已付款，等待平台确认;103001,等待发货;105001,买家申请退款，等待协商结果;105002,退款协议已达成;105003,部分退款后，等待发货;105004,买家取消退款申请;103002,已部分发货;101009,等待买家确认收货;106001,退款/退货协商中，等待协议达成;106002,买家投诉到平台;106003,协议已达成，执行中;102006,人工确认收货;102007,超过预定期限，自动确认收货;102111,交易成功;111111,交易关闭:</td>
				<td><input type="text" name="ORDERSTATUS" id="ORDERSTATUS" value="${pd.ORDERSTATUS}" maxlength="32" placeholder="这里输入订单状态	111000,订单取消;101003,等待买家付款;102001,买家已付款，等待平台确认;103001,等待发货;105001,买家申请退款，等待协商结果;105002,退款协议已达成;105003,部分退款后，等待发货;105004,买家取消退款申请;103002,已部分发货;101009,等待买家确认收货;106001,退款/退货协商中，等待协议达成;106002,买家投诉到平台;106003,协议已达成，执行中;102006,人工确认收货;102007,超过预定期限，自动确认收货;102111,交易成功;111111,交易关闭" title="订单状态	111000,订单取消;101003,等待买家付款;102001,买家已付款，等待平台确认;103001,等待发货;105001,买家申请退款，等待协商结果;105002,退款协议已达成;105003,部分退款后，等待发货;105004,买家取消退款申请;103002,已部分发货;101009,等待买家确认收货;106001,退款/退货协商中，等待协议达成;106002,买家投诉到平台;106003,协议已达成，执行中;102006,人工确认收货;102007,超过预定期限，自动确认收货;102111,交易成功;111111,交易关闭"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">订单总金额:</td>
				<td><input type="text" name="ORDERTOTALPRICE" id="ORDERTOTALPRICE" value="${pd.ORDERTOTALPRICE}" maxlength="32" placeholder="这里输入订单总金额" title="订单总金额"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">付款时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒:</td>
				<td><input type="text" name="PAYDATE" id="PAYDATE" value="${pd.PAYDATE}" maxlength="32" placeholder="这里输入付款时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒" title="付款时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">下单日期	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒:</td>
				<td><input type="text" name="STARTEDDATE" id="STARTEDDATE" value="${pd.STARTEDDATE}" maxlength="32" placeholder="这里输入下单日期	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒" title="下单日期	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">警告原因	示例值：高风险订单、订单发起售后纠纷、信用卡拒付等:</td>
				<td><input type="text" name="WARNREASON" id="WARNREASON" value="${pd.WARNREASON}" maxlength="32" placeholder="这里输入警告原因	示例值：高风险订单、订单发起售后纠纷、信用卡拒付等" title="警告原因	示例值：高风险订单、订单发起售后纠纷、信用卡拒付等"/></td>
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