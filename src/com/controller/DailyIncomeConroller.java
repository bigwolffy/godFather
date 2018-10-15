package com.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.service.DailyIncomeService;

@RestController
@RequestMapping(value="DailyIncome")
public class DailyIncomeConroller {
  
	@Resource
	private DailyIncomeService dailyIncomeService;
	
	//日总结算
	@RequestMapping("/day")
	public List<Map<String, Object>> selectDailyIncome(){
		return dailyIncomeService.selectDailyIncome();
	}
	
	
	   //年总结算
		@RequestMapping("/day")
		public List<Map<String, Object>> selectAll(){
			return dailyIncomeService.selectAll();
		}
}
