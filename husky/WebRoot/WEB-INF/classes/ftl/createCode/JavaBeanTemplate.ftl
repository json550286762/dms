package com.husky.entity.${packageName};

<#list fieldList as var>
	<#if var[1] == 'Date'> 
import java.util.Date;
	</#if>
</#list>

/**
 * 
* 类名称：${objectName}.java
* 类描述： 
* @author husky
* @version 1.0
 */
public class ${objectName}{

<#list fieldList as var>
	<#if var[1] == 'Integer'>
	
	private Integer ${var[0]}; // ${var[2]}
		
	<#elseif var[1] == 'Double'>
	
	private Double ${var[0]}; // ${var[2]}
		
	<#elseif var[1] == 'Date'> 
	
	private Date ${var[0]}; // ${var[2]}
		
	<#else>
	
	private String ${var[0]}; // ${var[2]}
		
	</#if>
</#list>

<#list fieldList as var>
	<#if var[1] == 'Integer'>
	
	public Integer get${var[0]}() {
		return ${var[0]};
	}
	public void set${var[0]}(Integer _${var[0]}) {
		${var[0]} = _${var[0]};
	}
		
	<#elseif var[1] == 'Double'>
	
	public Double get${var[0]}() {
		return ${var[0]};
	}
	public void set${var[0]}(Double _${var[0]}) {
		${var[0]} = _${var[0]};
	}
		
	<#elseif var[1] == 'Date'>
	public Date get${var[0]}() {
		return ${var[0]};
	}
	public void set${var[0]}(Date _${var[0]}) {
		${var[0]} = _${var[0]};
	}
		
	<#else>
	public String get${var[0]}() {
		return ${var[0]};
	}
	public void set${var[0]}(String _${var[0]}) {
		${var[0]} = _${var[0]};
	}
		
	</#if>
</#list>
}