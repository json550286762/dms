/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : ns51_admin

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2016-11-24 18:20:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dms_account`
-- ----------------------------
DROP TABLE IF EXISTS `dms_account`;
CREATE TABLE `dms_account` (
  `ACCOUNT_ID` varchar(100) NOT NULL,
  `ACCOUNTNAME` varchar(255) DEFAULT NULL COMMENT '账号名称',
  `ACCOUNTTYPE` varchar(32) NOT NULL COMMENT '账号类型',
  `ACCOUNTID` varchar(255) DEFAULT NULL COMMENT '账号',
  `AUTHORIZATIONCODE` varchar(255) DEFAULT NULL COMMENT '授权码',
  `CREATETIME` double(8,2) DEFAULT NULL COMMENT '创建时间',
  `STATE` int(11) NOT NULL COMMENT '状态',
  `AUTHTIME` datetime DEFAULT NULL COMMENT '授权时间',
  `CREATOR` varchar(255) DEFAULT NULL COMMENT '创建人',
  `LASTUPDATOR` varchar(255) DEFAULT NULL COMMENT '最后更新人',
  `LASTUPDATETIME` datetime DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`ACCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dms_account
-- ----------------------------

-- ----------------------------
-- Table structure for `dms_order`
-- ----------------------------
DROP TABLE IF EXISTS `dms_order`;
CREATE TABLE `dms_order` (
  `ORDER_ID` varchar(100) NOT NULL,
  `ORDERNO` varchar(255) DEFAULT NULL COMMENT '订单号	卖家后台登录能看到成交的订单号；示例值：1330312162',
  `ACTUALPRICE` double(8,2) DEFAULT NULL COMMENT '实收金额	示例值:100.00',
  `COMMISSIONAMOUNT` double(8,2) DEFAULT NULL COMMENT '佣金金额	示例值:100.00',
  `DELIVERYDATE` varchar(255) DEFAULT NULL COMMENT '发货时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒；示例值：2014-01-12 18:20:21',
  `DELIVERYDEADLINE` varchar(255) DEFAULT NULL COMMENT '发货截止时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒；示例值：2014-01-12 18:20:21',
  `FILLINGMONEY` double(8,2) DEFAULT NULL COMMENT '订单补款金额	示例值:100.00',
  `GATEWAYFEE` double(8,2) DEFAULT NULL COMMENT '网关手续费	示例值:100.00',
  `ITEMTOTALPRICE` double(8,2) DEFAULT NULL COMMENT '产品总计	示例值:100.00',
  `ORDERREMARK` varchar(255) DEFAULT NULL COMMENT '订单备注	蓝色要10个，加急，圣诞前要用到等等备注信息',
  `ORDERSTATUS` varchar(255) DEFAULT NULL COMMENT '订单状态	111000,订单取消;101003,等待买家付款;102001,买家已付款，等待平台确认;103001,等待发货;105001,买家申请退款，等待协商结果;105002,退款协议已达成;105003,部分退款后，等待发货;105004,买家取消退款申请;103002,已部分发货;101009,等待买家确认收货;106001,退款/退货协商中，等待协议达成;106002,买家投诉到平台;106003,协议已达成，执行中;102006,人工确认收货;102007,超过预定期限，自动确认收货;102111,交易成功;111111,交易关闭',
  `ORDERTOTALPRICE` double(8,2) DEFAULT NULL COMMENT '订单总额	示例值:100.00',
  `PAYDATE` varchar(255) DEFAULT NULL COMMENT '付款时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒；示例值：2014-01-12 18:20:21',
  `REDUCEPRICE` double(8,2) DEFAULT NULL COMMENT '订单降价金额	示例值:100.00',
  `REFUNDMONEY` double(8,2) DEFAULT NULL COMMENT '订单退款金额	示例值:100.00',
  `RISEPRICE` double(8,2) DEFAULT NULL COMMENT '订单涨价金额	示例值:100.00',
  `SELLERCOUPONPRICE` double(8,2) DEFAULT NULL COMMENT 'seller优惠券	示例值:100.00',
  `SHIPPINGCOST` double(8,2) DEFAULT NULL COMMENT '运费	示例值:100.00',
  `SHIPPINGTYPE` varchar(255) DEFAULT NULL COMMENT '买家选择物流方式	示例值：UPS,D-LINK等',
  `STARTEDDATE` varchar(255) DEFAULT NULL COMMENT '下单日期',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dms_order
-- ----------------------------
