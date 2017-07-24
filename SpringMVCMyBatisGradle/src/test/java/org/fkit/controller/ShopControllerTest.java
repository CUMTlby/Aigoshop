package org.fkit.controller;

import java.util.List;

import org.fkit.domain.Shop;
import org.fkit.service.ShopService;
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

public class ShopControllerTest {
	@Autowired
	@Qualifier("ShopService")
	private ShopService shopService;
	

	@Test
	public void testShop() {
		List<Shop> shop_list = shopService.getAll();
		System.out.println(shop_list);
	}


}
