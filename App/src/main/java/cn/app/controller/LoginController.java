package cn.app.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.app.pojo.Back_User;
import cn.app.pojo.Dev_User;
import cn.app.service.Back_UserService;
import cn.app.service.Dev_UserService;

@Controller
public class LoginController {
	@Resource
	private Back_UserService back_UserService;
	
	@Resource
	private Dev_UserService dev_UserService;
	
	public void setBack_UserService(Back_UserService back_UserService) {
		this.back_UserService = back_UserService;
	}


	@RequestMapping("/login")
	public String login() {
		return "login/enter";
	}
	
	
	@RequestMapping(value="/login-back",method=RequestMethod.GET)
	public String login2() {
		return "login/login-back";
	}
	@RequestMapping(value="/login-back",method=RequestMethod.POST)
	public String login2_post(String userCode,
			String userPassword,HttpSession session,
			Model model) {
		System.out.println("admin,login ============ " );
		//调用service方法，进行用户匹配
		Back_User bUser=back_UserService.login(userCode, userPassword);
		if(null != bUser){//登录成功
			//放入session
			session.setAttribute("user", bUser);
			session.setAttribute("userCode",  bUser.getUsercode());
			session.setAttribute("userName", bUser.getUsername());
			
			return "manager/m_b_display";
		}else{
			//页面跳转（login.jsp）带出提示信息--转发
			model.addAttribute("error", "用户名或密码不正确");
			return "login/login-back";
		}
		
	}
	@RequestMapping(value="/login-developer",method=RequestMethod.GET)
	public String login3() {
		return "login/login-developer";
	}
	
	
	
	
	@RequestMapping(value="/login-developer",method=RequestMethod.POST)
	public String login3_post(String devCode,
			String devPassword,HttpSession session,
			Model model) { 
System.out.println("app,login ============ " );
		//调用service方法，进行用户匹配
		Dev_User duser=dev_UserService.login(devCode, devPassword);
		if(null != duser){//登录成功
			//放入session
			session.setAttribute("user", duser);
			session.setAttribute("userCode", duser.getDevcode());
			session.setAttribute("userName", duser.getDevname());
			return "redirect:dev/first_display";
		}else{
			System.out.println("null");
			//页面跳转（login.jsp）带出提示信息--转发
			model.addAttribute("error", "用户名或密码不正确");
			return "login/login-developer";
		}
		
	}
	/*SimpleDateFormat formater =
            new SimpleDateFormat("yyyy年 MM月dd日");
  	    String strCurrentTime = formater.format(new Date()); 
parseFormat("sgagfg");*/
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String register() {
		return "login/register";
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register2(String devCode,String devName,
			String devPassword,String devEmail,
			String devInfo) {
		/*SimpleDateFormat formater=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String newdate=formater.format(new Date());*/
		
		/*String开发者帐号 devCode ·String开发者名称 devName  
		 * ·String开发者密码 devPassword  ·String邮箱 devEmail  
		 * ·String开发者简介 devInfo（textarea) ·创建时间 creationDate（添加时在代码中写）-->
			*/
		Dev_User dev_User=new Dev_User();
		dev_User.setDevcode(devCode);
		dev_User.setDevname(devName);
		dev_User.setDevpassword(devPassword);
		dev_User.setDevemail(devEmail);
		dev_User.setDevinfo(devInfo);
		//dev_User.setCreationdate(new Date());
		//调用service方法，添加用户
		int resultRows=0;
		resultRows=dev_UserService.register(dev_User);
		System.out.println("resultRows====="+resultRows);
		if(resultRows==1) {
			return "login/login-developer";
		}else if(resultRows==0) {
			return "login/register";
		}
		return "login/register";
	}
	
}
