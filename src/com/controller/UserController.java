package com.controller;

import javax.annotation.Resource;

import com.model.User;
import com.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	@Resource
	private UserService userService;
	
	@RequestMapping("/register.action")
	public String register(User user) {
		userService.register(user);
		return "userRegister.jsp";
	}

}
