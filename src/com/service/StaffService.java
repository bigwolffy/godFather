package com.service;

import java.util.List;


import com.alibaba.fastjson.JSONObject;
import com.model.Staff;;

public interface StaffService {
	JSONObject login(Staff staff); 
	
	List<Staff> searchStaff(Staff staff);
	
	JSONObject insertStaff(Staff staff);
	
	JSONObject updateByPrimaryKey(Staff staff);
	
	JSONObject deleteByPrimaryKey(Staff staff);
}
