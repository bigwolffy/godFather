package com.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Param;

import com.model.UserOrder;

public interface UserOrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserOrder record);

    int insertSelective(UserOrder record);

    UserOrder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserOrder record);

    int updateByPrimaryKey(UserOrder record);
    
    
    
    List<UserOrder> selectAll(@Param("date")  String date);
    
    List<UserOrder> selectBySearch(UserOrder userOrder);
    
    List<UserOrder> selectAll();
    

    
    
    
    
}