package org.fkit.controller;

import org.fkit.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {
	@Autowired
	@Qualifier("RegisterService")
	private RegisterService registerService;
	
	@RequestMapping(value="/register")
	 public String register(
			 String loginname,String password,String psd,String username,String phone,String email,
			 	Model model){
		registerService.register(loginname, password,psd,username,phone,email);
		
		return "register";
	}
	
	
	

	


}
