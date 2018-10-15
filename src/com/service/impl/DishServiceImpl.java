package com.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.mapper.DishMapper;
import com.model.Dish;
import com.service.DishService;
@Service
public class DishServiceImpl implements DishService {
	
	@Resource
	private DishMapper dishMapper;
  
	@Override
	public List<Dish> selectAllDish() {
		
		return dishMapper.selectAllDish();
	}

	@Override
	public JSONObject updateByName(Map<String, Integer> map) {
	    int sum=dishMapper.updateByName(map);	
	    List<Dish> list=dishMapper.selectByName(map);
	    Integer amount=0;
	    JSONObject jsonObject=new JSONObject();
	    
	    if (sum>0) { 
			jsonObject.put("msg", true);			
			Object[] num = map.values().toArray(); 
			for(int i=0;i<num.length;i++) {
				amount+=Integer.parseInt(num[i].toString()) * (list.get(i).getPurprice());
				
			}
			
			
			//获取当前日期
			long l = System.currentTimeMillis();
			Date date = new Date(l);
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String currentTime=dateFormat.format(date);
			
			Map<String, String> spending=new HashMap<>();
			spending.put("date", currentTime);
			spending.put("amount", amount.toString());
			dishMapper.insertSpend(spending);
		}else {
			jsonObject.put("msg", false);
		}
	    	    	
		return jsonObject;
	}

}
