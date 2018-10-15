package com.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mapper.UserOrderMapper;
import com.model.UserOrder;
import com.service.UserOrderService;
@Service
public class UserOrderServiceImpl implements UserOrderService {
     
	@Resource
	private UserOrderMapper userOrderMapper;
	
	@Override
	public List<UserOrder> selectAll() {
		//获取当前日期
		long l = System.currentTimeMillis();
		Date date = new Date(l);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String currentTime=dateFormat.format(date);

		return userOrderMapper.selectAll(currentTime);
	}

	@Override
	public List<UserOrder> selectBySearch(UserOrder userOrder) {
		
		return userOrderMapper.selectBySearch(userOrder);
	}

}
