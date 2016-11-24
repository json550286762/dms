package com.husky.service.system.dictionaries;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.husky.dao.DaoSupport;
import com.husky.entity.Dictionary;
import com.husky.entity.Page;
import com.husky.util.PageData;

@Service("dictionariesService")
public class DictionariesService{

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	
	//新增
	public void save(PageData pd)throws Exception{
		dao.save("DictionariesMapper.save", pd);
	}
	
	//修改
	public void edit(PageData pd)throws Exception{
		dao.update("DictionariesMapper.edit", pd);
	}
	
	//通过id获取数据
	public PageData findById(PageData pd) throws Exception {
		return (PageData) dao.findForObject("DictionariesMapper.findById", pd);
	}
	
	//查询总数
	public PageData findCount(PageData pd) throws Exception {
		return (PageData) dao.findForObject("DictionariesMapper.findCount", pd);
	}
	
	//查询某编码
	public PageData findBmCount(PageData pd) throws Exception {
		return (PageData) dao.findForObject("DictionariesMapper.findBmCount", pd);
	}
	
	//列出同一父类id下的数据
	public List<PageData> dictlistPage(Page page) throws Exception {
		return (List<PageData>) dao.findForList("DictionariesMapper.dictlistPage", page);
		
	}
	
	//删除
	public void delete(PageData pd) throws Exception {
		dao.delete("DictionariesMapper.delete", pd);
		
	}

	/**
	 * 
	* @Title: findDictByBianma 
	* @Description: 查询编码对应得数据字典
	* @author hxzhou
	* @param @param page
	* @param @return
	* @param @throws Exception    
	* @return List<PageData>    
	* @throws
	 */
	public List<Dictionary> findDictByBianma(Dictionary dictionary) throws Exception {
		return (List<Dictionary>) dao.findForList("DictionariesMapper.findDictByBianma", dictionary);
		
	}
	
}
