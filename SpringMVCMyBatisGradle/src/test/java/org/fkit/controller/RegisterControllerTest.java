package org.fkit.controller;

import static org.junit.Assert.*;

import org.fkit.service.RegisterService;
import org.junit.Before;
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
public class RegisterControllerTest {
	@Autowired
	@Qualifier("RegisterService")
	private RegisterService registerService;


	@Test
	public void testRegister() {
		registerService.register("zxm", "333","333","zxm","333","1272617286@qq.com");
		System.out.println("注册成功");
	}

}
