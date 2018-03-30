package cn.app.service;

import cn.app.pojo.Back_User;

public interface Back_UserService {
	/**
	 * 用户登录
	 * @param userCode
	 * @param userPassword
	 * @return
	 */
	public Back_User login(String userCode,String userPassword);
}
