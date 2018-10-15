package com.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.model.DailyIncome;

public interface DailyIncomeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DailyIncome record);

    int insertSelective(DailyIncome record);

    DailyIncome selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DailyIncome record);

    int updateByPrimaryKey(DailyIncome record);
    
    
    
    
    List<Map<String, Object>> selectDailyIncome(@Param("date") String date);
    
    List<Map<String, Object>> selectAll();
}