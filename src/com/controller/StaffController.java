package com.controller;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.model.Staff;

import com.service.StaffService;


@Controller
@RequestMapping("staff")
public class StaffController {
      
       @Resource
       private StaffService staffService;
	
	  //员工登陆	   
	   @RequestMapping("login.god")
	   @ResponseBody
	   public JSONObject login(@RequestBody Staff staff) {
		  return staffService.login(staff);
		  
	}
	   
	   
	 //搜索员工信息
	   @RequestMapping("searchStaff.god")
	   @ResponseBody
	   public List<Staff> searchStaff(@RequestBody Staff staff) {
		  return staffService.searchStaff(staff);
		  
	}
	   
      //新增员工
	   @RequestMapping("insertStaff.god")
	   @ResponseBody
	   public JSONObject insertStaff(@RequestBody Staff staff) {
		  return staffService.insertStaff(staff);
		  
	}
	   
	   
	   //修改员工
	   @RequestMapping("insertStaff.god")
	   @ResponseBody
	   public JSONObject updateByPrimaryKey(@RequestBody Staff staff) {
		  return staffService.insertStaff(staff);
		  
	}
	   
	   //删除员工
	   @RequestMapping("insertStaff.god")
	   @ResponseBody
	   public JSONObject deleteByPrimaryKey(@RequestBody Staff staff) {
		  return staffService.insertStaff(staff);
		  
	}
}
