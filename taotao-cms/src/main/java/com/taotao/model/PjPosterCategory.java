package com.taotao.model;

import java.util.Date;

/**
 * TITLE:广告分类model
 * USER:TAOTK
 * DATA:2016/9/14
 * TIME:10:51
 * COMPANY:www.51pjia.com
 */
public class PjPosterCategory {

    private Integer id;// int(11) NOT NULL,
    private String category_name;// varbinary(32) DEFAULT NULL,
    private Date create_time;// datetime DEFAULT NULL,
    private Integer category_status;// int(11) DEFAULT NULL,
    private Integer category_account;// int(11) DEFAULT NULL,
    private String category_discription;// varchar(100) DEFAULT NULL,

    private Integer number;//广告位的广告图片数

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Integer getCategory_status() {
        return category_status;
    }

    public void setCategory_status(Integer category_status) {
        this.category_status = category_status;
    }

    public Integer getCategory_account() {
        return category_account;
    }

    public void setCategory_account(Integer category_account) {
        this.category_account = category_account;
    }

    public String getCategory_discription() {
        return category_discription;
    }

    public void setCategory_discription(String category_discription) {
        this.category_discription = category_discription;
    }
}
