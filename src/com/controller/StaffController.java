package com.controller;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.model.Staff;

import com.service.StaffService;



@Controller
@RequestMapping("user")
public class StaffController {
      
       @Resource
       private StaffService staffService;
	
	  //用户登陆	   
	   @RequestMapping("login.god")
	   @ResponseBody
	   public JSONObject login(@RequestBody Staff staff) {
		  return staffService.login(staff);
		  
	}
	   
	   
	
	   @RequestMapping("aaa.god")
	   public void login(String a) {
		  System.out.println(a);
		  
	}
}
