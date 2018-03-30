package cn.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.app.dao.Dev_UserMapper;
import cn.app.pojo.Dev_User;
@Service("dev_UserService")
public class Dev_UserServiceImpl implements Dev_UserService {

	@Autowired
	private Dev_UserMapper dev_UserMapper;
	
	
	
	public void setDev_UserMapper(Dev_UserMapper dev_UserMapper) {
		this.dev_UserMapper = dev_UserMapper;
	}

	@Override
	public Dev_User login(String devCode, String devPassword) {
		Dev_User duser = null;
		try {
			System.out.println(devCode+"=================");
	 	duser  = dev_UserMapper.getLoginUser(devCode);
	 	System.out.println("usermapper获得的User"+duser);
		}catch(Exception e) {
			e.printStackTrace();
		}
		if(null!=duser) {
		
			if(!duser.getDevpassword().equals(devPassword)) {
				duser=null;
			}
		}
		return duser;
	}

	@Override
	public int register(Dev_User dev_User) {
		System.out.println("dev_User================="+dev_User);
		System.out.println("dev_Usershuxing================="+dev_User.getDevcode());
		System.out.println("aaa");
		int resultRows=0;
		System.out.println("bbb");
		resultRows=dev_UserMapper.insertUser(dev_User);
		System.out.println("cccc");
		System.out.println("usermapper添加用户的执行行数"+resultRows);
		return resultRows;
	}

}
