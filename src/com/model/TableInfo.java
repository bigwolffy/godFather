package com.model;

public class TableInfo {
    private Integer id;



    private String tablename;

    private Integer personavail;

    private String isuse;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

 

    public String getTablename() {
        return tablename;
    }

    public void setTablename(String tablename) {
        this.tablename = tablename == null ? null : tablename.trim();
    }

    public Integer getPersonavail() {
        return personavail;
    }

    public void setPersonavail(Integer personavail) {
        this.personavail = personavail;
    }

    public String getIsuse() {
        return isuse;
    }

    public void setIsuse(String isuse) {
        this.isuse = isuse == null ? null : isuse.trim();
    }
}