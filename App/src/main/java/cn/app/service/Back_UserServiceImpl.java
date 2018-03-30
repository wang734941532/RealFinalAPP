package cn.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.app.dao.Back_UserMapper;
import cn.app.pojo.Back_User;
@Service("back_UserService")
public class Back_UserServiceImpl implements Back_UserService {
	@Autowired
	private Back_UserMapper back_UserMapper;
	
	public void setBack_UserMapper(Back_UserMapper back_UserMapper) {
		this.back_UserMapper = back_UserMapper;
	}

	@Override
	public Back_User login(String userCode, String userPassword) {
		Back_User buser = null;
		try {
			buser =back_UserMapper.getLoginUser(userCode) ;
		} catch (Exception e) {
			e.printStackTrace();
		}
		//匹配密码
		if(null != buser){
			if(!buser.getUserpassword().equals(userPassword))
				buser = null;
		}
		
		return buser;
	}

}
