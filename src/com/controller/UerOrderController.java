package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.model.UserOrder;
import com.service.UserOrderService;

@RestController
@RequestMapping(value="userorder")
public class UerOrderController {
   
	@Resource
	private UserOrderService userOrderService;
	
	@RequestMapping(value="/selectAll.god")
	public List<UserOrder> selectAll(HttpServletRequest request) {
		
		HttpSession session=request.getSession();
		session.setAttribute("maidan", userOrderService.selectAll());
		
		return userOrderService.selectAll();

	}
	
	

	@RequestMapping(value="/selectBySearch.god")
	public List<UserOrder> selectBySearch(@RequestBody UserOrder userOrder) {
		return userOrderService.selectBySearch(userOrder);

	}
}
