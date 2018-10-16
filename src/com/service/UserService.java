package com.service;

import java.util.List;


import com.model.Dish;
import com.model.Member;
import com.model.TableInfo;

import com.model.UserOrder;

public interface UserService {
	List<UserOrder> getAllUserOrder();
	
	UserOrder selectByPrimaryKey(Integer id);
	
	void deleteByPrimaryKey(Integer id);
	
	int updateUserOrderByPrimaryKeySelective(UserOrder record);
	
	List<TableInfo> getAllTableInfo();

	int updateTableInfoByPrimaryKeySelective(TableInfo record);
	
	List<Dish> getAllDish();
	
	void deleteDishById(Integer id);
	
	void insertDish(Dish dish);
	

	
	List<Member> getAllMember();
	
	void insertMember(Member m);
	
	List<TableInfo> searchTable(TableInfo tableInfo);
}
