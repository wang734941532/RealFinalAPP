package cn.app.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
				
				//APP分类封装，key获取
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
				//分类封装，key获取---end
				//----------------------------------------------------
				//APP状态封装
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
				
				//APP平台封装
				List<Dictionary> PLATList = null;
				Map plaMap = null;
				
				if(session.getAttribute("plaMap") == null){
					PLATList = dictionaryService.getAppFlatForm();
					plaMap =new HashMap();
					
						for(Dictionary d : PLATList) {
						
						Object plaKey = (Object)d.getId();
						plaMap.put(plaKey, d.getValuename());
					}
				}else{
					plaMap= (HashMap)session.getAttribute("plaMap");
				}
				
				
				//APP发布封装
				//发布状态
				List<Dictionary> pubList = null;
				Map pubMap = null;
				if(session.getAttribute("pubMap") == null){
					pubList = dictionaryService.getpublicStatus();
					pubMap =new HashMap();
					
						for(Dictionary d : pubList) {
						
						Object plaKey = (Object)d.getId();
						pubMap.put(plaKey, d.getValuename());
					}
				}else{
					pubMap= (HashMap)session.getAttribute("pubMap");
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
					session.setAttribute("dicMap", dicMap);
					session.setAttribute("plaMap", plaMap);
					session.setAttribute("pubMap", pubMap);
					session.setAttribute("pageCount", pageCount);
					session.setAttribute("pageSize", pageSize);
					session.setAttribute("TotalCount", TotalCount);
					session.setAttribute("totalPages", totalPages);
					session.setAttribute("now_page", now_page);
					session.setAttribute("pubList", pubList);
					
				}catch(Exception e) {
					e.printStackTrace();
					System.out.println("DevController_error--------------");
				}
		
		
				return "dev/dev_app_maintenance";	
			}
	
	
	
	

	@RequestMapping("/maintenance1")
	public String maintenance1(HttpSession session,Model model) {
		
				List<Information> infoList = null;
				
				//APP分类封装，key获取
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
				//分类封装，key获取---end
				//----------------------------------------------------
				//APP状态封装
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
				
				//APP平台封装
				List<Dictionary> PLATList = null;
				Map plaMap = null;
				
				if(session.getAttribute("plaMap") == null){
					PLATList = dictionaryService.getAppFlatForm();
					plaMap =new HashMap();
					
						for(Dictionary d : PLATList) {
						
						Object plaKey = (Object)d.getId();
						plaMap.put(plaKey, d.getValuename());
					}
				}else{
					plaMap= (HashMap)session.getAttribute("plaMap");
				}
				
				
				//APP发布封装
				//发布状态
				List<Dictionary> pubList = null;
				Map pubMap = null;
				if(session.getAttribute("pubMap") == null){
					pubList = dictionaryService.getpublicStatus();
					pubMap =new HashMap();
					
						for(Dictionary d : pubList) {
						
						Object plaKey = (Object)d.getId();
						pubMap.put(plaKey, d.getValuename());
					}
				}else{
					pubMap= (HashMap)session.getAttribute("pubMap");
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
					session.setAttribute("dicMap", dicMap);
					session.setAttribute("plaMap", plaMap);
					session.setAttribute("pubMap", pubMap);
					session.setAttribute("pageCount", pageCount);
					session.setAttribute("pageSize", pageSize);
					session.setAttribute("TotalCount", TotalCount);
					session.setAttribute("totalPages", totalPages);
					session.setAttribute("now_page", now_page);
					session.setAttribute("pubList", pubList);
					
				}catch(Exception e) {
					e.printStackTrace();
					System.out.println("DevController_error--------------");
				}
		
		
				return "dev/dev_app_maintenance1";	
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
	
	
	@RequestMapping("/page")
	public String page(int p,HttpSession session,Model model) {
		
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
			
			infoList = infoService.getInfoList(pageCount, pageSize);
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
			System.out.println("DevController_error--------------");
		}
		
		return "dev/dev_app_maintenance";
	}
	
	@RequestMapping("/addVersion")
	public String addVersion(int id,HttpSession session) {
	
	Information information = 	infoService.getInfoById(id);
	List<Version> versionList = versionService.getVersionByAppId(id);
		
	session.setAttribute("info", information);
	session.setAttribute("versionList", versionList);
	
		return "dev/add_version";
	}
	
	
	@RequestMapping("/modifyVersion")
	public String modifyVersion(int id,HttpSession session) {
	
	Information information = 	infoService.getInfoById(id);
	List<Version> versionList = versionService.getVersionByAppId(id);
		
	session.setAttribute("info", information);
	session.setAttribute("versionList", versionList);
	
		return "dev/modify_version";
	}
	
	@RequestMapping("/realmodifyVersion")
	public String addVersion(int id,int appId,HttpSession session) {
	
	Information information = 	infoService.getInfoById(appId);
	System.out.println(information+"information==========");
	Version version = versionService.getVersionById(id);
	List<Version> versionList = versionService.getVersionByAppId(appId);
	
	//APP发布封装
	//发布状态
	List<Dictionary> pubList = null;
	Map pubMap = null;
	if(session.getAttribute("pubMap") == null){
		pubList = dictionaryService.getpublicStatus();
		pubMap =new HashMap();
		
			for(Dictionary d : pubList) {
			
			Object plaKey = (Object)d.getId();
			pubMap.put(plaKey, d.getValuename());
		}
	}else{
		pubMap= (HashMap)session.getAttribute("pubMap");
	}
	
	
	
	
	session.setAttribute("info", information);
	session.setAttribute("versionList", versionList);
	session.setAttribute("version", version);
	session.setAttribute("pubMap", pubMap);
		return "dev/realVersionModify";
	}
	
	
	
	
	
	
	@RequestMapping(value="/upload",method=RequestMethod.POST)
	public String addResolver(HttpServletRequest request,
			Long id,String versionNo,Long versionSize,String pubStatus,String versionInfo,String engname,
            @RequestParam(value="apkName",required=false) MultipartFile file) {
		
		Version v = null;
		
		/*System.out.println(id);
		
		System.out.println(versionNo);
		System.out.println(versionSize);
		
		System.out.println(pubStatus);
		
		System.out.println(versionInfo);*/
		
		String myPath = null;
		  //如果文件不为空，写入上传路径
      if(!file.isEmpty()) {
            //上传文件路径
            String path = request.getServletContext().getRealPath("/statics/img");
            
            String lowpath = null;
            String realpath = request.getContextPath() + "/statics/img";
            //上传文件名
            String filename = file.getOriginalFilename();
            File filepath = new File(path,filename);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) { 
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件当中
            try {
            	myPath = path + File.separator + filename;
            	lowpath = realpath + File.separator + filename;
				file.transferTo(new File(path + File.separator + filename));
				System.out.println(myPath+"======*****");
				System.out.println(lowpath+"======*****");
				
				v = new Version();
				v.setAppid(id);
				v.setVersionno(versionNo);
				v.setVersionsize(versionSize);
				Long pubStatu = Long.parseLong(pubStatus);
				v.setPublishstatus(pubStatu);
				v.setVersioninfo(versionInfo);
				v.setDownloadlink(lowpath);
				v.setApklocpath(myPath);
				v.setApkfilename(engname);
				v.setCreationdate(new Date());
				Long  p = 1L; 
				v.setCreatedby(p);
			 int count = versionService.insertSelective(v);
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
            
            return "redirect:maintenance1";
        } else {
        	
        	return "redirect:maintenance1";
        }
		
	}
	
	
	@RequestMapping(value="/nowModifyVersion",method=RequestMethod.POST)
	public String nowModifyVersion(HttpServletRequest request,
			Long vid,String versionNo,Long versionSize,Long pubStatus,String versionInfo,String engname,
            @RequestParam(value="apkName",required=false) MultipartFile file) {
		System.out.println(versionNo);
		System.out.println(vid);
		System.out.println(engname);
		System.out.println(versionSize);
		Version v = null;
		 String lowpath = null;
		String myPath = null;
		  //如果文件不为空，写入上传路径
      if(!file.isEmpty()) {
            //上传文件路径
            String path = request.getServletContext().getRealPath("/statics/img");
           
            String realpath = request.getContextPath() + "/statics/img";
            //上传文件名
            String filename = file.getOriginalFilename();
            File filepath = new File(path,filename);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) { 
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件当中
            try {
            	myPath = path + File.separator + filename;
            	lowpath = realpath + File.separator + filename;
				file.transferTo(new File(path + File.separator + filename));
				
				
			
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
            
      }
            System.out.println(myPath+"======*****");
			System.out.println(lowpath+"======*****");
        	v = new Version();
			v.setId(vid);
			v.setVersionno(versionNo);
			v.setVersionsize(versionSize);
			v.setPublishstatus(pubStatus);
			v.setVersioninfo(versionInfo);
			v.setDownloadlink(lowpath);
			v.setApklocpath(myPath);
			v.setApkfilename(engname);
			v.setModifydate(new Date());
			
		
		 int count = versionService.updateByPrimaryKeySelective(v);
            
            
            return "redirect:maintenance1";
        	
	}
	
	
	@RequestMapping("/addApp")
	public String addApp() {
		
		
		return "dev/app_add";
	}
	
	@RequestMapping(value="/writeApp",method=RequestMethod.POST)
	public String writeApp(HttpServletRequest request,
			String Sname,String Aname,String rom,String gui, Long size,Long count,Long platform,
			Long sort1,Long sort2,Long sort3,Long state,String desc,
            @RequestParam(value="logo",required=false) MultipartFile file) {
		
	Information information = new Information();
	information.setSoftwarename(Sname);
	information.setApkname(Aname);
	information.setSupportrom(rom);
	information.setInterfacelanguage(gui);
	information.setSoftwaresize(size);
	information.setDownloads(count);
	information.setFlatformid(platform);
	information.setCategorylevel1(sort1);
	information.setCategorylevel2(sort2);
	information.setCategorylevel3(sort3);
	information.setStatus(state);
	information.setAppinfo(desc);
	
	System.out.println(Sname);
	System.out.println(Aname);
	System.out.println(rom);
	System.out.println(gui);
	System.out.println(size);
	System.out.println(count);
	System.out.println(platform);
	System.out.println(sort1);
	System.out.println(sort2);
	System.out.println(sort3);
	System.out.println(state);
	System.out.println(desc);
	
		String myPath = null;
		  //如果文件不为空，写入上传路径
      if(!file.isEmpty()) {
            //上传文件路径
            String path = request.getServletContext().getRealPath("/statics/img");
            
            String lowpath = null;
            String realpath = request.getContextPath() + "/statics/img";
            //上传文件名
            String filename = file.getOriginalFilename();
            File filepath = new File(path,filename);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) { 
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件当中
            try {
            	myPath = path + File.separator + filename;
            	lowpath = realpath + File.separator + filename;
				file.transferTo(new File(path + File.separator + filename));
				System.out.println(lowpath+"======*****");
				information.setLogolocpath(myPath);
				information.setLogopicpath(lowpath);
				
			 int c = infoService.insertSelective(information);
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
            
            
        } 
      return "redirect:maintenance1";
	}
	
	
	
	@RequestMapping("/modifyApp")
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
			System.out.println("DevController_error--------------");
		}
		
		return "dev/modify_app";
	}
	
	
	@RequestMapping(value="/realModifyApp",method=RequestMethod.POST)
	public String realModifyApp(HttpServletRequest request,
			String Sname,String Aname,String rom,String gui, Long size,Long count,Long platform,
			Long sort1,Long sort2,Long sort3,Long status,String desc,Long id,
            @RequestParam(value="logo",required=false) MultipartFile file) {
		
	Information information = new Information();
	information.setSoftwarename(Sname);
	information.setApkname(Aname);
	information.setSupportrom(rom);
	information.setInterfacelanguage(gui);
	information.setSoftwaresize(size);
	information.setDownloads(count);
	information.setFlatformid(platform);
	information.setCategorylevel1(sort1);
	information.setCategorylevel2(sort2);
	information.setCategorylevel3(sort3);
	information.setStatus(status);
	information.setAppinfo(desc);
	information.setId(id);
	
	System.out.println(Sname);
	System.out.println(Aname);
	System.out.println(rom);
	System.out.println(gui);
	System.out.println(size);
	System.out.println(count);
	System.out.println(platform);
	System.out.println(sort1);
	System.out.println(sort2);
	System.out.println(sort3);
	System.out.println(status+"----status");
	System.out.println(desc+"===desc");
	System.out.println(id+"===desc");
		String myPath = null;
		 String lowpath = null;
		  //如果文件不为空，写入上传路径
      if(!file.isEmpty()) {
            //上传文件路径
            String path = request.getServletContext().getRealPath("/statics/img");
            
           
            String realpath = request.getContextPath() + "/statics/img";
            //上传文件名
            String filename = file.getOriginalFilename();
            File filepath = new File(path,filename);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) { 
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件当中
            try {
            	myPath = path + File.separator + filename;
            	lowpath = realpath + File.separator + filename;
				file.transferTo(new File(path + File.separator + filename));
				System.out.println(lowpath+"======*****");
				System.out.println(myPath+"======*****");
				information.setLogolocpath(myPath);
				information.setLogopicpath(lowpath);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
           
        }
      
		int c = infoService.updateAppByPK(information);
     
		return "redirect:maintenance1";
	}
	
	
	
	
	
	
	
}
