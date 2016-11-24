package com.husky.entity.dms;

import java.util.Date;
import java.util.Date;

/**
 * 
* 类名称：Account.java
* 类描述： 
* @author husky
* @version 1.0
 */
public class Account{

	
	private String ACCOUNTNAME; // 账号名称
		
	
	private String ACCOUNTTYPE; // 账号类型
		
	
	private String ACCOUNTID; // 账号
		
	
	private String AUTHORIZATIONCODE; // 授权码
		
	
	private Double CREATETIME; // 创建时间
		
	
	private Integer STATE; // 状态
		
	
	private Date AUTHTIME; // 授权时间
		
	
	private String CREATOR; // 创建人
		
	
	private String LASTUPDATOR; // 最后更新人
		
	
	private Date LASTUPDATETIME; // 最后更新时间
		

	public String getACCOUNTNAME() {
		return ACCOUNTNAME;
	}
	public void setACCOUNTNAME(String _ACCOUNTNAME) {
		ACCOUNTNAME = _ACCOUNTNAME;
	}
		
	
	public String getACCOUNTTYPE() {
		return ACCOUNTTYPE;
	}
	public void setACCOUNTTYPE(String _ACCOUNTTYPE) {
		ACCOUNTTYPE = _ACCOUNTTYPE;
	}
		
	public String getACCOUNTID() {
		return ACCOUNTID;
	}
	public void setACCOUNTID(String _ACCOUNTID) {
		ACCOUNTID = _ACCOUNTID;
	}
		
	public String getAUTHORIZATIONCODE() {
		return AUTHORIZATIONCODE;
	}
	public void setAUTHORIZATIONCODE(String _AUTHORIZATIONCODE) {
		AUTHORIZATIONCODE = _AUTHORIZATIONCODE;
	}
		
	
	public Double getCREATETIME() {
		return CREATETIME;
	}
	public void setCREATETIME(Double _CREATETIME) {
		CREATETIME = _CREATETIME;
	}
		
	
	public Integer getSTATE() {
		return STATE;
	}
	public void setSTATE(Integer _STATE) {
		STATE = _STATE;
	}
		
	public Date getAUTHTIME() {
		return AUTHTIME;
	}
	public void setAUTHTIME(Date _AUTHTIME) {
		AUTHTIME = _AUTHTIME;
	}
		
	public String getCREATOR() {
		return CREATOR;
	}
	public void setCREATOR(String _CREATOR) {
		CREATOR = _CREATOR;
	}
		
	public String getLASTUPDATOR() {
		return LASTUPDATOR;
	}
	public void setLASTUPDATOR(String _LASTUPDATOR) {
		LASTUPDATOR = _LASTUPDATOR;
	}
		
	public Date getLASTUPDATETIME() {
		return LASTUPDATETIME;
	}
	public void setLASTUPDATETIME(Date _LASTUPDATETIME) {
		LASTUPDATETIME = _LASTUPDATETIME;
	}
		
}