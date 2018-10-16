package com.service.impl;





import com.mapper.DishMapper;
import com.mapper.MemberMapper;
import com.mapper.TableInfoMapper;
import com.mapper.UserOrderMapper;
import com.model.Dish;
import com.model.Member;
import com.model.TableInfo;

import com.model.UserOrder;
import com.service.UserService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserOrderMapper uoMapper;
	@Autowired
	TableInfoMapper tiMapper;
	@Autowired
	DishMapper dMapper;
	@Autowired
	MemberMapper mMapper;
	
	@Override
	public List<UserOrder> getAllUserOrder() {
		// TODO Auto-generated method stub
		return uoMapper.selectAll();
	}

	@Override
	public UserOrder selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return uoMapper.selectByPrimaryKey(id);
	}
	
	@Override
	public void deleteByPrimaryKey(Integer id){
		uoMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int updateUserOrderByPrimaryKeySelective(UserOrder record) {
		// TODO Auto-generated method stub
		return uoMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public List<TableInfo> getAllTableInfo() {
		// TODO Auto-generated method stub
		return tiMapper.selectAll();
	}

	@Override
	public int updateTableInfoByPrimaryKeySelective(TableInfo record) {
		// TODO Auto-generated method stub
		return tiMapper.updateByPrimaryKeySelective(record);
	}
	
	

	@Override
	public List<Dish> getAllDish() {
		// TODO Auto-generated method stub
		return dMapper.selectAll();
	}

	@Override
	public void deleteDishById(Integer id) {
		// TODO Auto-generated method stub
		dMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void insertDish(Dish dish) {
		// TODO Auto-generated method stub
		dMapper.insert(dish);
	}

	@Override
	public List<Member> getAllMember() {
		// TODO Auto-generated method stub
		return mMapper.selectAll();
	}

	@Override
	public void insertMember(Member m) {
		// TODO Auto-generated method stub
		mMapper.insertSelective(m);
	}

	@Override
	public List<TableInfo> searchTable(TableInfo tableInfo) {
		
		return tiMapper.searchTable(tableInfo);
	}
    
	
	
}
