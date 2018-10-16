package com.mapper;

import java.util.List;

import com.model.TableInfo;

import net.sf.jsqlparser.schema.Table;

public interface TableInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TableInfo record);

    int insertSelective(TableInfo record);

    TableInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TableInfo record);

    int updateByPrimaryKey(TableInfo record);
    
    List<TableInfo> selectAll();
    
    List<TableInfo>  searchTable(TableInfo tableInfo);
}