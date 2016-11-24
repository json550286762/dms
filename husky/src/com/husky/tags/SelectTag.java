package com.husky.tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.BodyTagSupport;

/**
 * 
* @ClassName: SelectTag 
* @Description: 数据字典SelectTag
* @author Jason
* @date 2016年11月24日 下午2:51:57 
*
 */
@SuppressWarnings("serial")
public class SelectTag extends BodyTagSupport {
	@Override
	public int doStartTag() throws JspException {
		try {
			StringBuffer results = new StringBuffer("<select");
			if(name != null){
	            results.append(" name=\"");
	            results.append(name);
	            results.append("\"");
	        }
			if(style != null){
	            results.append(" style=\"");
	            results.append(style);
	            results.append("\"");
	        }
			results.append(">");
			pageContext.getOut().write(results.toString());
		} catch (IOException ex) {
			throw new JspTagException("标签加载失败，请联系管理员。");
		}
		return EVAL_BODY_INCLUDE;
	}
	@Override
	public int doEndTag() throws JspException {
		try {
			StringBuffer results = new StringBuffer("");
			// 因为下拉中包含下拉内容，所以只能在遇到结束标签时才能写select结束
			results.append("</select>");			
			pageContext.getOut().write(results.toString());
		} catch (IOException ex) {
			throw new JspTagException("标签加载失败，请联系管理员。");
		}
		return EVAL_PAGE;
	}
	// 样式
	protected String style;
	// 名字
	protected String name;
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}	
	
}