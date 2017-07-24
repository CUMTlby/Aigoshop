package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.fkit.domain.Shop;
import org.fkit.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShopController {
	/**
	 * 自动注入ShopService
	 * */
	@Autowired
	@Qualifier("ShopService")
	private ShopService shopService;

	/**
	 * 处理/shop请求
	 * */
	
	@RequestMapping(value="/shop")
	 public String shop(Model model){
		// 获得所有购物车信息集合
		List<Shop> shop_list = shopService.getAll();
		// 将信息集合添加到model当中
		model.addAttribute("shop_list", shop_list);
		// 跳转到shop页面
		return "shop";
	}
	
	@RequestMapping(value="/save")
	public String save(HttpServletRequest request,Model model) {
		String book_id = request.getParameter("book_id");
		int book_id_ = Integer.parseInt(book_id);
		Shop shop=shopService.findShop(book_id_);
		if (shop == null) {
			shopService.saveShop(book_id_);
		}else {			
			shopService.addShop(book_id_);	
		}
		List<Shop> shop_list = shopService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("shop_list", shop_list);
		// 跳转到cart页面
		return "shop";
	}
	
	//从购物车里增加数量
	@RequestMapping(value="/increase")
	public String increase(Model model,HttpServletRequest request){
		String book_id = request.getParameter("book_id");
		int book_id_ = Integer.parseInt(book_id);
		shopService.increaseShop(book_id_);
		List<Shop> shop_list = shopService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("shop_list", shop_list);
		// 跳转到cart页面
		return "shop";
	}
	
	//从购物车里减少数量
		@RequestMapping(value="/reduce")
		public String reduce(Model model,HttpServletRequest request){
			String book_id = request.getParameter("book_id");
			int book_id_ = Integer.parseInt(book_id);
			shopService.reduceShop(book_id_);
			List<Shop> shop_list = shopService.getAll();
			// 将图书集合添加到model当中
			model.addAttribute("shop_list", shop_list);
			// 跳转到cart页面
			return "shop";
		}
		
		

		//删除购物车的东西
		@RequestMapping(value="/remove")
		public String remove(Model model,HttpServletRequest request){
			String book_id = request.getParameter("book_id");
			int book_id_ = Integer.parseInt(book_id);
			shopService.removeShop(book_id_);
			List<Shop> shop_list = shopService.getAll();
			// 将图书集合添加到model当中
			model.addAttribute("shop_list", shop_list);
			// 跳转到cart页面
			return "shop";
		}
	
	
	
	
}
