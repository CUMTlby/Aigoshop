package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.fkit.domain.Book;
import org.fkit.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 处理图书请求控制器
 * */
@Controller
public class BookController {
	
	/**
	 * 自动注入BookService
	 * */
	@Autowired
	@Qualifier("bookService")
	private BookService bookService;

	/**
	 * 处理/index请求
	 * */
	@RequestMapping(value="/index")
	 public String index(Model model){
		// 获得所有图书集合
		List<Book> book_list = bookService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("book_list", book_list);
		// 跳转到index页面
		return "index";
	}
	
	
	@RequestMapping(value="/details")
	 public String one(@RequestParam  int book_id,Model model,HttpSession session){
			// 获得一个图书
		    Book book= bookService.getone(book_id);
			// 将图书添加到session当中
			session.setAttribute("book", book);
			// 跳转到details页面
			return "details";
			
		}
	
	@RequestMapping(value="/sheke")
	 public String sk(Model model){
			// 获得一类图书
		List<Book> book_list= bookService.getsk();
			// 将图书集合添加到model当中
			model.addAttribute("book_list", book_list);
			// 跳转到sheke页面
			return "sheke";
	}
	

	@RequestMapping(value="/xiaoshuo")
	 public String xs(Model model){
			// 获得一类图书
		List<Book> book_list= bookService.getxs();
			// 将图书集合添加到model当中
			model.addAttribute("book_list", book_list);
			// 跳转到main页面
			return "xiaoshuo";
	}
	

	@RequestMapping(value="/shaoer")
	 public String se(Model model){
			// 获得一类图书
		List<Book> book_list= bookService.getse();
			// 将图书集合添加到model当中
			model.addAttribute("book_list", book_list);
			// 跳转到main页面
			return "shaoer";
	}
	
	@RequestMapping(value="/lizhi")
	 public String lz(Model model){
			// 获得一类图书
		List<Book> book_list= bookService.getlz();
			// 将图书集合添加到model当中
			model.addAttribute("book_list", book_list);
			// 跳转到main页面
			return "lizhi";
	}
	
	@RequestMapping(value="/zazhi")
	 public String zz(Model model){
			// 获得一类图书
		List<Book> book_list= bookService.getzz();
			// 将图书集合添加到model当中
			model.addAttribute("book_list", book_list);
			// 跳转到main页面
			return "lizhi";
	}
}
