package com.taotao.dao;

import com.taotao.model.PjPoster;

import java.util.List;

/**
 * TITLE:
 * USER:TAOTK广告的接口
 * DATA:2016/9/14
 * TIME:15:27
 * COMPANY:www.51pjia.com
 */
public interface PjPosterMapper {


    /**
     * 查询所有的广告
     * @return
     */
    List<PjPoster> selectAllPoster();


}
