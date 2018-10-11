package com.mapper;

import java.util.List;

import com.model.Staff;


public interface StaffMapper {
	
    int insertSelective(Staff record);

    Staff selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Staff record);

    int updateByPrimaryKeyWithBLOBs(Staff record);

    
  
    
    List<Staff> login(Staff staff);
    
    List<Staff> searchStaff(Staff staff);
    
    int insert(Staff record);
    
    int updateByPrimaryKey(Staff record);
    
    int deleteByPrimaryKey(Staff staff);
    
}