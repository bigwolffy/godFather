package com.service;

import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSONObject;
import com.model.Dish;

public interface DishService {
    List<Dish> selectAllDish();
    
    JSONObject updateByName(Map<String, Integer> map);
}
