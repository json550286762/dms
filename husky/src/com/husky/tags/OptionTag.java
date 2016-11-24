package com.husky.tags;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.test.context.ContextConfiguration;

import com.husky.entity.Dictionary;
import com.husky.service.system.dictionaries.DictionariesService;

/**
 * 
* @ClassName: OptionTag 
* @Description:  数据字典OptionTag
* @author jason
* @date 2016年11月24日 下午2:52:29 
*
 */
@ContextConfiguration(locations = {"classpath:spring/ApplicationContext.xml"})
public class OptionTag extends BodyTagSupport { 
	
	@Resource
	private DictionariesService dictionariesService;
	
    @Override  
    public int doStartTag() throws JspException {  
        return EVAL_BODY_INCLUDE;  
    }  
    @Override  
    public int doEndTag() throws JspException {  
        try {  
            StringBuffer results = new StringBuffer("");
            
            Dictionary dic = new Dictionary();
            dic.setBIANMA(collection);
            
            try {
				List<Dictionary> dics = dictionariesService.findDictByBianma(dic);
				results.append("<option value=\"\"  selected=\"selected\">请选择</option>");  
				for(Dictionary d:dics){
					results.append("<option value='"+d.getBIANMA()+"'>"+d.getNAME()+"</option>"); 
				}
			} catch (Exception e) {
				  throw new JspTagException("标签加载失败，请联系管理员。");  
			}
            
            /*if ("SEX".equals(collection)) {  
                results.append("<option value=\"\"  selected=\"selected\">请选择</option>");  
                results.append("<option value=\"1\">男</option>");  
                results.append("<option value=\"2\">女</option>");  
            }*/  
            pageContext.getOut().write(results.toString());  
        } catch (IOException ex) {  
            throw new JspTagException("标签加载失败，请联系管理员。");  
        }  
        return EVAL_PAGE;  
    }  
    // collection只是传递一个标识，具体下拉值内容是从数据库取还是从请求中得到为不同具体实现  
    protected String collection;  
    public String getCollection() {  
        return collection;  
    }  
    public void setCollection(String collection) {  
        this.collection = collection;  
    }  
}  
