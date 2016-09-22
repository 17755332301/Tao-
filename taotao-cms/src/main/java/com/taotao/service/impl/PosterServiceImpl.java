package com.taotao.service.impl;

import com.taotao.dao.PjPosterCategoryMapper;
import com.taotao.dao.PjPosterMapper;
import com.taotao.model.PjPoster;
import com.taotao.model.PjPosterCategory;
import com.taotao.service.PosterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * TITLE:广告实现类
 * USER:TAOTK
 * DATA:2016/9/14
 * TIME:15:32
 * COMPANY:www.51pjia.com
 */
@Service
public class PosterServiceImpl implements PosterService {

    @Autowired
    private PjPosterCategoryMapper pjPosterCategoryMapper;

    @Autowired
    private PjPosterMapper pjPosterMapper;

    public int deletePjPoster(Integer id) {
        return pjPosterMapper.deletePjPoster(id);
    }
    public PjPosterCategory selectPjPosterCategoryById(Integer id) {
        return pjPosterCategoryMapper.selectPjPosterCategoryById(id);
    }
    public PjPoster selectPjPosterById(Integer id) {
        return pjPosterMapper.selectPjPosterById(id);
    }
    public int selectMaxId() {
        return pjPosterMapper.selectMaxId();
    }
    public int updatePjPoster(PjPoster pjPoster) {
        return pjPosterMapper.updatePjPoster(pjPoster);
    }
    public int insertPoster(PjPoster pjPoster) {
        return pjPosterMapper.insertPoster(pjPoster);
    }
    public List<PjPoster> selectAllPoster() {
        return pjPosterMapper.selectAllPoster();
    }

    public List<PjPoster> selectPjPosterByCategoryId(Integer id) {
        return pjPosterMapper.selectPjPosterByCategoryId(id);
    }
    public int deletePjPosterCategory(Integer id) {
        return pjPosterCategoryMapper.deletePjPosterCategory(id);
    }

    public int insertPosterCategory(PjPosterCategory pjPosterCategory) {
        return pjPosterCategoryMapper.insertPosterCategory(pjPosterCategory);
    }
    public List<PjPosterCategory> selectPjPosterCategoryAll() {
        return pjPosterCategoryMapper.selectPjPosterCategoryAll();
    }

}
