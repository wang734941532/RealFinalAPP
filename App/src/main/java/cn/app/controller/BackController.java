package cn.app.controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.app.pojo.Category;
import cn.app.pojo.Dictionary;
import cn.app.pojo.Information;
import cn.app.pojo.Version;
import cn.app.service.CategoryService;
import cn.app.service.DictionaryService;
import cn.app.service.InfoService;
import cn.app.service.VersionService;

@Controller
@RequestMapping("/manager")
public class BackController {

	@Autowired
	private InfoService infoService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private VersionService versionService;
	
	@Autowired
	private DictionaryService dictionaryService;
	
	
	public void setDictionaryService(DictionaryService dictionaryService) {
		this.dictionaryService = dictionaryService;
	}

	public void setVersionService(VersionService versionService) {
		this.versionService = versionService;
	}

	public void setInfoService(InfoService infoService) {
		this.infoService = infoService;
	}

	//m_b_display.jsp    管理员后台首页展示
	@RequestMapping("/m_b_display")
	public String display() {
		return "manager/m_b_display";
	}
	
	//app_validate.jsp  管理员审核首页面
	@RequestMapping("/validate")
	public String validate(Model model,HttpSession session) {
		//待审核
		int statusId =1 ;
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
			infoList = infoService.getInfoByStatusId(statusId,pageCount,pageSize);
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
			System.out.println("BackController_error--------------");
		}
		return "manager/app_validate";
	}
	
	@RequestMapping("/v_display")
	public String v_display(String id,Model model,HttpSession session) {
		int info_Id =Integer.parseInt(id);
		Information info = null;
		Version v = null;
		List<Dictionary> dicList = null;
		Map dicMap = null;
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
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("BackController_error--------------");
		}
		
		return "manager/m_app_v_display";
	}
	
	@RequestMapping("/page")
	public String page(int p,HttpSession session,Model model) {
		
		int statusId =1 ;
		List<Information> infoList = null;
		List<Category> catList = null;
		Map map = new HashMap();
		int pageCount ;
		int pageSize = 6;
		int TotalCount ;
		int totalPages; 
		int now_page =p ;
		try {
			
			TotalCount = infoService.getInfoCount();
			totalPages = (TotalCount%pageSize > 0) ? TotalCount/pageSize +1 : TotalCount/pageSize;
			pageCount = pageSize*(now_page-1);
			
			infoList = infoService.getInfoByStatusId(statusId,pageCount,pageSize);
			model.addAttribute("infoList", infoList);
			
			catList = categoryService.getCategoryList();
			for(Category c : catList) {
				Object d = (Object)(c.getId());
				map.put(d, c.getCategoryname());
			}
			
			session.setAttribute("categoryList", catList);
			session.setAttribute("map", map);
			session.setAttribute("pageCount", pageCount);
			session.setAttribute("pageSize", pageSize);
			session.setAttribute("TotalCount", TotalCount);
			session.setAttribute("totalPages", totalPages);
			session.setAttribute("now_page", now_page);
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("BackController_error--------------");
		}
		
		return "manager/app_validate";
	}
	
	
	
	/*@RequestMapping(value="/verify",method=RequestMethod.GET)
	@ResponseBody
	public String verify(){
		System.out.println("ssss");
		
		return "true";
	}*/
	
	
	
	
	@RequestMapping(value="/verifyNo",method=RequestMethod.POST)
	@ResponseBody
	public String verify2(int id){
		int value =3;
		int count = infoService.updateStatus(value, id);
		System.out.println(count);
		
		return "true";
	}
	
}
