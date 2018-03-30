package cn.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.app.pojo.Category;
import cn.app.pojo.Dictionary;
import cn.app.pojo.Information;
import cn.app.service.CategoryService;
import cn.app.service.DictionaryService;
import cn.app.service.InfoService;
import cn.app.service.VersionService;

@Controller
public class AjaxController {
	
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






	@RequestMapping(value="/verify/{id}",method=RequestMethod.GET)
	@ResponseBody
	public String verify1(@PathVariable("id") Integer id){
		int value =2;
		int count = infoService.updateStatus(value, id);
		System.out.println(id);
		//return "{\"msg\":\"true\"}";
		return "true";
	}
	
	@RequestMapping(value="/verifyNo/{id}",method=RequestMethod.GET)
	@ResponseBody
	public String verify2(@PathVariable("id") Integer id){
		int value =3;
		int count = infoService.updateStatus(value, id);
		//return "{\"msg\":\"true\"}";
		return "true";
	}
	
	@RequestMapping(value="/status",method=RequestMethod.GET)
	@ResponseBody
	public List<Dictionary> verify3(){
		List<Dictionary> appStatusList = dictionaryService.getAppStatus();
		
		//return "{\"msg\":\"true\"}";
		return appStatusList;
	}
	
	@RequestMapping(value="/flatform",method=RequestMethod.GET)
	@ResponseBody
	public List<Dictionary> verify4(){
		List<Dictionary> appFormList = dictionaryService.getAppFlatForm();
		
		//return "{\"msg\":\"true\"}";
		return appFormList;
	}
	@RequestMapping(value="/levelOne",method=RequestMethod.GET)
	@ResponseBody
	public List<Category> verify5(){
		//List<Dictionary> appFormList = dictionaryService.getAppFlatForm();
		List<Category> appSortOne = categoryService.getSortOne();
		//return "{\"msg\":\"true\"}";
		return appSortOne;
	}
	
	
	@RequestMapping(value="/sort2",method=RequestMethod.GET)
	@ResponseBody
	public List<Category> verify6(int sort1option){
		System.out.println(sort1option);
		List<Category> appSortTwo = categoryService.getSortTwo(sort1option);
		
		//return "{\"msg\":\"true\"}";
		return appSortTwo;
	}
	
	
	@RequestMapping(value="/sort3",method=RequestMethod.GET)
	@ResponseBody
	public List<Category> verify7(int sort2option){
		List<Category> appSortThree = categoryService.getSortTwo(sort2option);
		
		//return "{\"msg\":\"true\"}";
		return appSortThree;
	}
	
	
	@RequestMapping(value="/query",method=RequestMethod.POST)
	public String verify8(int app_state,int platform,String softName,int sort1,int sort2,int sort3,Model model){
		System.out.println(app_state+"========");
		System.out.println(sort3+"========");
		List<Information> queryList = infoService.queryInfo(softName, sort1,sort2,sort3);
		System.out.println(platform);
		System.out.println(sort2);
		model.addAttribute("queryList", queryList);
		return "query";
	}
	
	
	
}
