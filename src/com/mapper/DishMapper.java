package com.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.model.Dish;

public interface DishMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Dish record);

    int insertSelective(Dish record);

    Dish selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Dish record);

    int updateByPrimaryKey(Dish record);
    
    
    
    List<Dish>  selectAllDish();
    
    int updateByName(@Param("map")  Map<String,Integer> map);
    
    List<Dish> selectByName(@Param("map")  Map<String, Integer> map);
    
    int insertSpend(Map<String, String> map);
    
    List<Dish> selectAll();
    
    
 }