package com.taotao.dao;

import com.taotao.model.PjPosterCategory;

import java.util.List;

/**
 * TITLE:广告分类
 * USER:TAOTK
 * DATA:2016/9/14
 * TIME:15:29
 * COMPANY:www.51pjia.com
 */
public interface PjPosterCategoryMapper {

    /**
     * 插入一条广告分类
     * @param pjPosterCategory
     * @return
     */
    int insertPosterCategory(PjPosterCategory pjPosterCategory);


    /**
     * 查询所有的广告分类
     * @return
     */
    List<PjPosterCategory> selectPjPosterCategoryAll();

    /**
     * 通过id删除广告位
     * @param id
     * @return
     */
    int deletePjPosterCategory(Integer id);

    /**
     * 通过id查询分类名称
     * @param id
     * @return
     */
    PjPosterCategory selectPjPosterCategoryById(Integer id);

}
