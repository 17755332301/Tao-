package com.taotao.service;

import com.taotao.model.PjPoster;

import java.util.List;

/**
 * TITLE:
 * USER:TAOTK
 * DATA:2016/9/23
 * TIME:9:27
 * COMPANY:www.51pjia.com
 */
public interface IndexService {


    /**
     * 查询所有的广告
     * @return
     */
    List<PjPoster> selectAllPoster();
}
