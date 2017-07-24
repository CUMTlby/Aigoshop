package org.fkit.controller;

import java.util.List;

import org.fkit.domain.Collect;
import org.fkit.service.CollectService;
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

public class CollectControllerTest {
	@Autowired
	@Qualifier("collectService")
	private CollectService collectService;
	

	@Test
	public void testCollect() {
		List<Collect> collect_list = collectService.getAllCollectByLoginname("1");
		System.out.println(collectService.getAllCollectByLoginname("1"));
	}


}
