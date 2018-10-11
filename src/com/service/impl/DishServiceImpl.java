package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

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

}
