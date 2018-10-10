package com.mapper;

import com.model.TableInfo;

public interface TableInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TableInfo record);

    int insertSelective(TableInfo record);

    TableInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TableInfo record);

    int updateByPrimaryKey(TableInfo record);
}