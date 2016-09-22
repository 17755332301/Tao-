package com.taotao.model;

import java.util.Date;

/**
 * TITLE:广告的model
 * USER:TAOTK
 * DATA:2016/9/14
 * TIME:10:48
 * COMPANY:www.51pjia.com
 */
public class PjPoster {

    private Integer id; //int(11) NOT NULL,
    private Integer category_id;// int(11) DEFAULT NULL,
    private String category_name; //varchar(32) DEFAULT NULL,
    private Integer poster_sort; //int(11) DEFAULT NULL,
    private String poster_url; //varchar(50) DEFAULT NULL,
    private String poster_size; //varchar(32) DEFAULT NULL,
    private Date create_time;//datetime DEFAULT NULL,
    private Integer poster_status; //int(11) DEFAULT NULL,
    private Integer poster_address;
    private String categoryName;
    private String poster_small_url;//小图片

    public String getPoster_small_url() {
        return poster_small_url;
    }
    public void setPoster_small_url(String poster_small_url) {
        this.poster_small_url = poster_small_url;
    }
    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public Integer getPoster_address() {
        return poster_address;
    }

    public void setPoster_address(Integer poster_address) {
        this.poster_address = poster_address;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCategory_id() {
        return category_id;
    }

    public void setCategory_id(Integer category_id) {
        this.category_id = category_id;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public Integer getPoster_sort() {
        return poster_sort;
    }

    public void setPoster_sort(Integer poster_sort) {
        this.poster_sort = poster_sort;
    }

    public String getPoster_url() {
        return poster_url;
    }

    public void setPoster_url(String poster_url) {
        this.poster_url = poster_url;
    }

    public String getPoster_size() {
        return poster_size;
    }

    public void setPoster_size(String poster_size) {
        this.poster_size = poster_size;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Integer getPoster_status() {
        return poster_status;
    }

    public void setPoster_status(Integer poster_status) {
        this.poster_status = poster_status;
    }
}
