package com.husky.tags;

import java.io.IOException;  

import javax.annotation.Resource;
import javax.servlet.jsp.JspException;  
import javax.servlet.jsp.JspTagException;  
import javax.servlet.jsp.tagext.BodyTagSupport;  

import com.husky.entity.Dictionary;
import com.husky.service.system.dictionaries.DictionariesService;

/**
 * 
* @ClassName: DisplayTag 
* @Description: DisplayTag
* @author jason
* @date 2016年11月24日 下午2:53:51 
*
 */
@SuppressWarnings("serial")  
public class DisplayTag extends BodyTagSupport {  
	
	@Resource(name="dictionariesService")
	private DictionariesService dictionariesService;
	
    @Override  
    public int doStartTag() throws JspException {  
        try {  
            StringBuffer results = new StringBuffer("");  
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
            
            Dictionary dic = new Dictionary();
            dic.setBIANMA(collection);
            
            /*if ("SEX".equals(collection)) {  
                results.append("<span>");  
                results.append("<input type=\"");  
                results.append("hidden\" name=\"");  
                results.append(getName());  
                results.append("\"");  
                results.append(" value=\"");  
                results.append(getValue());  
                results.append("\">");                 
                if ("1".equals(getValue())) {  
                    results.append("男");  
                } else if ("2".equals(getValue())) {  
                    results.append("女");  
                } else {  
                    results.append("请选择");  
                }  
                results.append("</span>");  
            }*/  
            pageContext.getOut().write(results.toString());  
        } catch (IOException ex) {  
            throw new JspTagException("标签加载失败，请联系管理员。");  
        }  
        return EVAL_PAGE;  
    }  
    // collection只是传递一个标识，具体下拉值内容是从数据库取还是从请求中得到为不同具体实现  
    protected String collection;  
    // 传递的值  
    protected String value;  
    // 该属性的名称  
    protected String name;  
    public String getCollection() {  
        return collection;  
    }  
    public void setCollection(String collection) {  
        this.collection = collection;  
    }  
    public String getName() {  
        return name;  
    }  
    public void setName(String name) {  
        this.name = name;  
    }  
    public String getValue() {  
        return value;  
    }  
    public void setValue(String value) {  
        this.value = value;  
    }  
}  
