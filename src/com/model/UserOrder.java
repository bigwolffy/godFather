package com.model;

import java.util.Date;

public class UserOrder {
    private Integer id;

    private Date time;

    private Integer dintable;

    private Integer price;

    private String ispay;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getDintable() {
        return dintable;
    }

    public void setDintable(Integer dintable) {
        this.dintable = dintable;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getIspay() {
        return ispay;
    }

    public void setIspay(String ispay) {
        this.ispay = ispay == null ? null : ispay.trim();
    }
}