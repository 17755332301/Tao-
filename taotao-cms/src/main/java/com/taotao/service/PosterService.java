package com.taotao.service;

import com.taotao.model.PjPoster;
import com.taotao.model.PjPosterCategory;

import java.util.List;

/**
 * TITLE:广告的接口
 * USER:TAOTK
 * DATA:2016/9/14
 * TIME:15:31
 * COMPANY:www.51pjia.com
 */
public interface PosterService {


    /**
     * 删除
     * @param id
     * @return
     */
    int deletePjPoster(Integer id);
    /**
     * 通过id查询分类名称
     * @param id
     * @return
     */
    PjPosterCategory selectPjPosterCategoryById(Integer id);

    /**
     * 通过id查询
     * @param id
     * @return
     */
    PjPoster selectPjPosterById(Integer id);
    /**
     * 获取最大的id
     * @return
     */
    int selectMaxId();

    /**
     * 更新
     * @return
     */
    int updatePjPoster(PjPoster pjPoster);
    /**
     * 插入
     * @param pjPoster
     * @return
     */
    int insertPoster(PjPoster pjPoster);
    /**
     * 查询所有的广告
     * @return
     */
    List<PjPoster> selectAllPoster();
    /**
     * 通过分类id查询
     * @return
     */
    List<PjPoster> selectPjPosterByCategoryId(Integer id);
    /**
     * 通过id删除广告位
     * @param id
     * @return
     */
    int deletePjPosterCategory(Integer id);
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
}
