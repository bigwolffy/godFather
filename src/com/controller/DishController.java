package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mapper.DishMapper;
import com.model.Dish;
import com.model.Staff;
import com.service.DishService;
import com.service.StaffService;

@Controller
@RequestMapping("dish")
public class DishController {

    @Resource
    private DishService dishService;
    
    //搜索员工信息
	   @RequestMapping("selectAllDish.god")
	   @ResponseBody
	   public List<Dish> searchStaff(@RequestBody Staff staff) {
		  return dishService.selectAllDish();
		  
	}
	
}
