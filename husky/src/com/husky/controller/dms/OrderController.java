package com.husky.controller.dms;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.husky.controller.base.BaseController;
import com.husky.entity.Page;
import com.husky.service.dms.OrderService;
import com.husky.util.AppUtil;
import com.husky.util.Const;
import com.husky.util.Jurisdiction;
import com.husky.util.ObjectExcelView;
import com.husky.util.PageData;

/** 
 * 类名称：OrderController
 * 创建人：husky 
 * 创建时间：2016-11-17
 */
@Controller
@RequestMapping(value="/order")
public class OrderController extends BaseController {
	
	String menuUrl = "order/list.do"; //菜单地址(权限用)
	@Resource(name="orderService")
	private OrderService orderService;
	
	/**
	 * 新增
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, "新增Order");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("ORDER_ID", this.get32UUID());	//主键
		orderService.save(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out){
		logBefore(logger, "删除Order");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			orderService.delete(pd);
			out.write("success");
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
	}
	
	/**
	 * 修改
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, "修改Order");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		orderService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 列表
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page){
		logBefore(logger, "列表Order");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData>	varList = orderService.list(page);	//列出Order列表
			mv.setViewName("dms/order_list");
			mv.addObject("varList", varList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 去新增页面
	 */
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd(){
		logBefore(logger, "去新增Order页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			mv.setViewName("dms/order_edit");
			mv.addObject("msg", "save");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	
	/**
	 * 去修改页面
	 */
	@RequestMapping(value="/goEdit")
	public ModelAndView goEdit(){
		logBefore(logger, "去修改Order页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			pd = orderService.findById(pd);	//根据ID读取
			mv.setViewName("dms/order_edit");
			mv.addObject("msg", "edit");
			mv.addObject("pd", pd);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	
	/**
	 * 批量删除
	 */
	@RequestMapping(value="/deleteAll")
	@ResponseBody
	public Object deleteAll() {
		logBefore(logger, "批量删除Order");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "dell")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if(null != DATA_IDS && !"".equals(DATA_IDS)){
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				orderService.deleteAll(ArrayDATA_IDS);
				pd.put("msg", "ok");
			}else{
				pd.put("msg", "no");
			}
			pdList.add(pd);
			map.put("list", pdList);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		} finally {
			logAfter(logger);
		}
		return AppUtil.returnObject(pd, map);
	}
	
	/*
	 * 导出到excel
	 * @return
	 */
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel(){
		logBefore(logger, "导出Order到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			Map<String,Object> dataMap = new HashMap<String,Object>();
			List<String> titles = new ArrayList<String>();
			titles.add("订单号	卖家后台登录能看到成交的订单号");	//1
			titles.add("买家ID	示例值：ff808081416839d5014168e43ab30033");	//2
			titles.add("买家确认收货时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒");	//3
			titles.add("买家别名	买家昵称");	//4
			titles.add("交易取消时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒");	//5
			titles.add("收货国家	示例值");	//6
			titles.add("发货时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒");	//7
			titles.add("发货截止时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒");	//8
			titles.add("入账时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒");	//9
			titles.add("是否需要特别注意的订单（如高风险订单、售后纠纷订单等）	值为false或null表示订单正常，true表示此订单需要特别注意一下，例如，防止高风险订单直接发货");	//10
			titles.add("订单备注");	//11
			titles.add("订单状态	111000,订单取消;101003,等待买家付款;102001,买家已付款，等待平台确认;103001,等待发货;105001,买家申请退款，等待协商结果;105002,退款协议已达成;105003,部分退款后，等待发货;105004,买家取消退款申请;103002,已部分发货;101009,等待买家确认收货;106001,退款/退货协商中，等待协议达成;106002,买家投诉到平台;106003,协议已达成，执行中;102006,人工确认收货;102007,超过预定期限，自动确认收货;102111,交易成功;111111,交易关闭");	//12
			titles.add("订单总金额");	//13
			titles.add("付款时间	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒");	//14
			titles.add("下单日期	日期格式：yyyy-MM-dd HH:mm:ss,精确到秒");	//15
			titles.add("警告原因	示例值：高风险订单、订单发起售后纠纷、信用卡拒付等");	//16
			dataMap.put("titles", titles);
			List<PageData> varOList = orderService.listAll(pd);
			List<PageData> varList = new ArrayList<PageData>();
			for(int i=0;i<varOList.size();i++){
				PageData vpd = new PageData();
				vpd.put("var1", varOList.get(i).getString("ORDERNO"));	//1
				vpd.put("var2", varOList.get(i).getString("BUYERID"));	//2
				vpd.put("var3", varOList.get(i).getString("BUYERCONFIRMDATE"));	//3
				vpd.put("var4", varOList.get(i).getString("BUYERNICKNAME"));	//4
				vpd.put("var5", varOList.get(i).getString("CANCELDATE"));	//5
				vpd.put("var6", varOList.get(i).getString("COUNTRY"));	//6
				vpd.put("var7", varOList.get(i).getString("DELIVERYDATE"));	//7
				vpd.put("var8", varOList.get(i).getString("DELIVERYDEADLINE"));	//8
				vpd.put("var9", varOList.get(i).getString("INACCOUNTDATE"));	//9
				vpd.put("var10", varOList.get(i).getString("ISWARN"));	//10
				vpd.put("var11", varOList.get(i).getString("ORDERREMARK"));	//11
				vpd.put("var12", varOList.get(i).getString("ORDERSTATUS"));	//12
				vpd.put("var13", varOList.get(i).getString("ORDERTOTALPRICE"));	//13
				vpd.put("var14", varOList.get(i).getString("PAYDATE"));	//14
				vpd.put("var15", varOList.get(i).getString("STARTEDDATE"));	//15
				vpd.put("var16", varOList.get(i).getString("WARNREASON"));	//16
				varList.add(vpd);
			}
			dataMap.put("varList", varList);
			ObjectExcelView erv = new ObjectExcelView();
			mv = new ModelAndView(erv,dataMap);
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/* ===============================权限================================== */
	public Map<String, String> getHC(){
		Subject currentUser = SecurityUtils.getSubject();  //shiro管理的session
		Session session = currentUser.getSession();
		return (Map<String, String>)session.getAttribute(Const.SESSION_QX);
	}
	/* ===============================权限================================== */
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
