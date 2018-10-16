package com.service.impl;





import com.alibaba.fastjson.JSONObject;
import com.mapper.StaffMapper;
import com.model.Staff;

import com.service.StaffService;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

	@Override
	public List<Staff> searchStaff(Staff staff) {
		
		return staffMapper.searchStaff(staff);
	}

	@Override
	public JSONObject insertStaff(Staff staff) {
		int sum=staffMapper.insert(staff);
		JSONObject jsonObject=new JSONObject();
		if (sum>0) {
			jsonObject.put("msg", true);
		}else {
			jsonObject.put("msg", false);
		}
		return jsonObject;
	}

	@Override
	public JSONObject updateByPrimaryKey(Staff staff) {
		int sum=staffMapper.updateByPrimaryKey(staff);
		JSONObject jsonObject=new JSONObject();
		if (sum>0) {
			jsonObject.put("msg", true);
		}else {
			jsonObject.put("msg", false);
		}
		return jsonObject;
		
	}

	@Override
	public JSONObject deleteByPrimaryKey(Staff staff) {
		int sum=staffMapper.deleteByPrimaryKey(staff);
		JSONObject jsonObject=new JSONObject();
		if (sum>0) {
			jsonObject.put("msg", true);
		}else {
			jsonObject.put("msg", false);
		}
		return jsonObject;
	}
}
