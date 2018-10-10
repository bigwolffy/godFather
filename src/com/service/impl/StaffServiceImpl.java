package com.service.impl;




import com.alibaba.fastjson.JSONObject;
import com.mapper.StaffMapper;
import com.model.Staff;

import com.service.StaffService;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service
public class StaffServiceImpl implements StaffService {
    @Resource
    private StaffMapper staffMapper;

	@Override
	public JSONObject login(Staff staff) {
		JSONObject jsonObject= new JSONObject();
		List<Staff> list=staffMapper.login(staff);
		if (list.isEmpty()) {
			jsonObject.put("msg",false);
		}else {
			jsonObject.put("msg",true);
		}
		return jsonObject;
	}
}
