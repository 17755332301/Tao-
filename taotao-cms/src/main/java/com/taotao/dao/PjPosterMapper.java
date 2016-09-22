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
     * 通过分类id查询
     * @return
     */
    List<PjPoster> selectPjPosterByCategoryId(Integer id);


    /**
     * 通过id查询
     * @param id
     * @return
     */
    PjPoster selectPjPosterById(Integer id);
    /**
     * 查询所有的广告
     * @return
     */
    List<PjPoster> selectAllPoster();

    /**
     * 插入
     * @param pjPoster
     * @return
     */
    int insertPoster(PjPoster pjPoster);

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
     * 删除
     * @param id
     * @return
     */
    int deletePjPoster(Integer id);
}
