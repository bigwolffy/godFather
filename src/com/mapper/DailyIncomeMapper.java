package com.mapper;

import com.model.DailyIncome;

public interface DailyIncomeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DailyIncome record);

    int insertSelective(DailyIncome record);

    DailyIncome selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DailyIncome record);

    int updateByPrimaryKey(DailyIncome record);
}