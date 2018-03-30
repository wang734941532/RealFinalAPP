package cn.app.test;

import static org.junit.Assert.*;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import cn.app.dao.Dev_UserMapper;
import cn.app.pojo.Dev_User;
import cn.app.service.Dev_UserService;
import cn.app.service.Dev_UserServiceImpl;

public class Test_insertUser {

	@Test
	public void test() {
		String resource = "mybatis-config2.xml";

		try {
			InputStream inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			SqlSession session = sqlSessionFactory.openSession();
			try {
				Dev_User dev_User=new Dev_User();
				dev_User.setDevcode("test500");
				dev_User.setDevname("test5");
				dev_User.setDevpassword("123123");
				dev_User.setDevemail("123456@163.com");
				dev_User.setDevinfo("test");
				int count = session.getMapper(Dev_UserMapper.class).insertUser(dev_User);
				session.commit();
				System.out.println("count="+count);
			} finally {
				session.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		//Dev_UserService dev_UserService=new Dev_UserServiceImpl();
		//Dev_UserMapper dev_UserMapper
		/*Dev_User dev_User=new Dev_User();
		dev_User.setDevcode("test500");
		dev_User.setDevname("test5");
		dev_User.setDevpassword("123123");
		dev_User.setDevemail("123456@163.com");
		dev_User.setDevinfo("test");
		dev_User.setCreationdate(new Date());*/
		
		//int count=dev_UserService.register(dev_User);
		//int count=dev_UserService.register(dev_User);
		//System.out.println("count======"+count);
		
	}

}
