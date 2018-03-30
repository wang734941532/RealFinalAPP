package cn.app.service;

import cn.app.pojo.Dev_User;

public interface Dev_UserService {

	/**
	 * 用户登录
	 * @param userCode
	 * @param userPassword
	 * @return
	 */
	public Dev_User login(String devCode,String devPassword);
	/**
	 * 用户注册
	 * @param Dev_User
	 * @return integer
	 */
	public int register(Dev_User dev_User);
}
