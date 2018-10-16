package com.controller;



import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.RestController;


import com.model.Dish;
import com.model.Member;
import com.model.TableInfo;

import com.model.UserOrder;
import com.service.UserService;


@RestController
@RequestMapping("/user")
@WebServlet
public class UserController {
	@Autowired
	private UserService uService;
	
	@RequestMapping("/test.god")
	public String test(HttpServletResponse resp){
		return "hello";
	}
	
	//买单结算部分包含以下两个方法
	
	//买单结算页面 获取当前所有账单
	//ispay 1：未结账  2：已结账
	@RequestMapping("/getAllUserOrder.god")
	public List<UserOrder> getAllUserOrder(){
		return uService.getAllUserOrder();
	}
	
	//结账
	@RequestMapping("/billById.god")
	public void bill(@RequestParam("id")Integer id){
		UserOrder uo = new UserOrder();
		uo.setId(id);
		uo.setIspay("已付款");
		uService.updateUserOrderByPrimaryKeySelective(uo);
	}
	
	//前台服务部分
	//获取桌使用信息
	@RequestMapping("/getAllTableInfo.god")
	public List<TableInfo> getAllTableInfo(HttpServletRequest request){
		HttpSession session=request.getSession();
		session.setAttribute("canzhuo",uService.getAllTableInfo() );
		return uService.getAllTableInfo();
	}
	//使用桌
	@RequestMapping("/useTableById.god")
	public void useTable(@RequestParam("id")Integer id){
		
		TableInfo ti = new TableInfo();
		ti.setId(id);
		ti.setIsuse("已使用");
		uService.updateTableInfoByPrimaryKeySelective(ti);
	}
	
	//根据条件搜索餐桌
	@RequestMapping("/searchTable.god")
	public List<TableInfo> searchTable(TableInfo tableInfo,HttpServletRequest request){
		
        HttpSession session=request.getSession();
        session.setAttribute("canzhuo", uService.searchTable(tableInfo));
		 return  uService.searchTable(tableInfo);
	}
	
	
	//获取菜品信息
	@RequestMapping("/getAllDish.god")
	public List<Dish> getAllDish(){
		return uService.getAllDish();
	}

	//删除ID菜品
	@RequestMapping("/deleteDishByID.god")
	public void deleteDish(@RequestParam("id")Integer id){
		uService.deleteDishById(id);
	}
	
	//增加菜品
	@RequestMapping("/insertDish.god")
	public void insertDish(Dish dish){
		uService.insertDish(dish);
	}
	
	
	//获取会员列表
	@RequestMapping("/getAllMember.god")
	public List<Member> getAllMember(){
		return uService.getAllMember();
	}

	//增加会员
	@RequestMapping("/insertMember.god")
	public void insertMember(Member m){
		uService.insertMember(m);
	}	
	
	
	
}
