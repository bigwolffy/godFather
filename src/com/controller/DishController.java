package com.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.model.Dish;

import com.service.DishService;

@RequestMapping(value="dish")
@Controller
public class DishController {

    @Resource
    private DishService dishService;
    
      //搜索菜品信息
	   @RequestMapping("/selectAllDish.god")
	   @ResponseBody
	   public List<Dish> searchStaff(@RequestBody Dish dish) {
		  return dishService.selectAllDish();
		  
	}
	   
	   
	   //添加菜品库存
	   @RequestMapping("/insertStore.god")
	   @ResponseBody
	   public JSONObject updateByName(@RequestParam Map<String, Integer> map) {
		   System.out.println(map);
		   
		   
		  return dishService.updateByName(map); 
		  
	}
	
}
