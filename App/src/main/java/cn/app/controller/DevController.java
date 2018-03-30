package cn.app.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.app.pojo.Category;
import cn.app.pojo.Dictionary;
import cn.app.pojo.Information;
import cn.app.pojo.Version;
import cn.app.service.CategoryService;
import cn.app.service.DictionaryService;
import cn.app.service.InfoService;
import cn.app.service.VersionService;

@Controller
@RequestMapping("/dev")
public class DevController {
	
	@Autowired
	private InfoService infoService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private VersionService versionService;
	
	@Autowired
	private DictionaryService dictionaryService;
	
	
	
	public void setInfoService(InfoService infoService) {
		this.infoService = infoService;
	}


	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}


	public void setVersionService(VersionService versionService) {
		this.versionService = versionService;
	}


	public void setDictionaryService(DictionaryService dictionaryService) {
		this.dictionaryService = dictionaryService;
	}


	@RequestMapping("/first_display")
	public String ss() {
	return "dev/d_b_display";	
	}
	

	@RequestMapping("/maintenance")
	public String maintenance(HttpSession session,Model model) {
		
				List<Information> infoList = null;
				List<Category> catList = null;
				Map map = null;
				if(session.getAttribute("map") == null){
					catList = categoryService.getCategoryList();
					map = new HashMap(); 
					for(Category c : catList) {
						Object d = (Object)(c.getId());
						map.put(d, c.getCategoryname());
					}
					
				}else{
					
					map = (HashMap)session.getAttribute("map");
					
				}
				int pageCount = 0;
				int pageSize = 6;
				int TotalCount ;
				int totalPages; 
				int now_page ;
				try {
					infoList = infoService.getInfoList(pageCount, pageSize);
					model.addAttribute("infoList", infoList);
					
					TotalCount = infoService.getInfoCount();
					totalPages = (TotalCount%pageSize > 0) ? TotalCount/pageSize +1 : TotalCount/pageSize;
					
					now_page =pageCount + 1;
					
					
					session.setAttribute("categoryList", catList);
					session.setAttribute("map", map);
					session.setAttribute("pageCount", pageCount);
					session.setAttribute("pageSize", pageSize);
					session.setAttribute("TotalCount", TotalCount);
					session.setAttribute("totalPages", totalPages);
					session.setAttribute("now_page", now_page);
					
				}catch(Exception e) {
					e.printStackTrace();
					System.out.println("DevController_error--------------");
				}
		
		
				return "dev/dev_app_maintenance";	
			}
	
	@RequestMapping("/add")
	public String add() {
	return "dev/app_add";	
	}
	
	@RequestMapping("/modify")
	public String modify() {
	return "dev/modify_app";	
	}
	@RequestMapping("/add_version")
	public String add_version() {
	return "dev/add_version";	
	}
	
	@RequestMapping("/modify_version")
	public String modify_version() {
	return "dev/modify_version";	
	}
	
	
	
	@RequestMapping("/look")
	public String add_display(String id,Model model,HttpSession session) {
		int info_Id =Integer.parseInt(id);
		Information info = null;
		Version v = null;
		List<Category> catList = null;
		List<Dictionary> dicList = null;
		Map dicMap = null;
		Map map =null;
		if(session.getAttribute("dicMap") == null){
			dicList = dictionaryService.getDictionaryListByStatus();
			dicMap =new HashMap();
			
				for(Dictionary d : dicList) {
				
				Object dicKey = (Object)d.getValueid();
				dicMap.put(dicKey, d.getValuename());
			}
		}else{
			dicMap= (HashMap)session.getAttribute("dicMap");
		}
		
		if(session.getAttribute("map") == null){
			catList = categoryService.getCategoryList();
			map = new HashMap(); 
			for(Category c : catList) {
				Object d = (Object)(c.getId());
				map.put(d, c.getCategoryname());
			}
			
		}else{
			
			map = (HashMap)session.getAttribute("map");
		}
	
		try {
			
			info = infoService.getInfoById(info_Id );
		
			
			
			if(info.getVersionid()==null){
				System.out.println("null!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			}else{
				long p = info.getVersionid();
				int a = (int)p;
				v = versionService.getVersionById(a);
			}
			
			//model.addAttribute("version",v);
			//model.addAttribute("info", info);
			session.setAttribute("version",v);
			session.setAttribute("info", info);
			session.setAttribute("dicMap", dicMap);
			session.setAttribute("map", map);
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("DevController_error--------------");
		}
		
		return "dev/look";
	}
	
	
	
	
	
	
	
}
