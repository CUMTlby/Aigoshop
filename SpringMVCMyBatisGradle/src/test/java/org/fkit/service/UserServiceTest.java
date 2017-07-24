package org.fkit.service;

import org.fkit.domain.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)   
@ContextConfiguration(locations={"classpath:applicationContext.xml","classpath:springmvc-config.xml"})

public class UserServiceTest {
	@Autowired 
	@Qualifier("userService")
	 private UserService userService;


	@Test
	public void testLogin() {
		User user = userService.login("lby", "111");
		if(user!= null){
			System.out.println("登录成功");
		}else{
			System.out.println("登录失败");
		}	
	}
	
	@Test
	public void testChangepassword() {
		userService.changepassword("1","11","11");
		System.out.println("修改成功");	
	}
	
	@Test
	public void testFind() {
		User user=userService.forgetpwd("lby", "568501047@qq.com");
		System.out.println(user.getPassword());
		System.out.println("找回成功");
	}
}
