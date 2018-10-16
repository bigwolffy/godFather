package com.model;



public class UserOrder {
    private Integer id;

    private String time;

    private Integer dintable;

    private Integer price;

    private String ispay;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
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