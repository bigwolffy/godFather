package com.service;

import com.alibaba.fastjson.JSONObject;
import com.model.Staff;;

public interface StaffService {
	JSONObject login(Staff staff);   
}
