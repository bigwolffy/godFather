package com.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mapper.DailyIncomeMapper;
import com.service.DailyIncomeService;
@Service
public class DailyIncomeServiceImpl  implements DailyIncomeService{
    
	@Resource
	private DailyIncomeMapper dailyIncomeMapper;
	
	 
	@Override
	public List<Map<String, Object>> selectDailyIncome() {
		//获取当前日期
		long l = System.currentTimeMillis();
		Date date = new Date(l);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String currentTime=dateFormat.format(date);
		
		return dailyIncomeMapper.selectDailyIncome(currentTime);
	}


	@Override
	public List<Map<String, Object>> selectAll() {
		return dailyIncomeMapper.selectAll();
	}

}
