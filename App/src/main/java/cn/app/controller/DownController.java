package cn.app.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DownController {
	
	
	@RequestMapping("/download")
	@ResponseBody
	public String doPost(HttpServletRequest req, HttpServletResponse resp,String fileName) throws ServletException, IOException {
	req.setCharacterEncoding("UTF-8");
	 String path = req.getServletContext().getRealPath("/statics/uploadfiles/"+fileName);//获取要下载的文件名
    //第一步：设置响应类型
    resp.setContentType("application/force-download");//应用程序强制下载
    //第二读取文件
    InputStream in = new FileInputStream(path);
    //设置响应头，对文件进行url编码
    fileName = URLEncoder.encode(fileName, "UTF-8");
    resp.setHeader("Content-Disposition", "attachment;filename="+fileName);   
    resp.setContentLength(in.available());
    
    //第三步：老套路，开始copy
    //File f = new File();
    OutputStream out = resp.getOutputStream();
    byte[] b = new byte[1024];
    int len = 0;
    while((len = in.read(b))!=-1){
      out.write(b, 0, len);
    }
    out.flush();
    out.close();
    in.close();
    
    return "hello";
  }
	
	
	
	@RequestMapping("/d")
	@ResponseBody
	public String d(HttpServletRequest req, HttpServletResponse resp,String name) throws ServletException, IOException {
	req.setCharacterEncoding("UTF-8");
    //第一步：设置响应类型
    //第二读取文件
    String path = req.getServletContext().getRealPath("/uploadfiles/"+name);
    System.out.println(path+"============");
    
    
    return "hello";
  }
	
	@RequestMapping("/ee")
	public String vert() {
		return "error/download";
	}
	
}

