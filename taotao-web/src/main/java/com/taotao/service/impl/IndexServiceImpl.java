package com.taotao.service.impl;

import com.taotao.dao.PjPosterMapper;
import com.taotao.model.PjPoster;
import com.taotao.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * TITLE:
 * USER:TAOTK
 * DATA:2016/9/23
 * TIME:9:27
 * COMPANY:www.51pjia.com
 */
@Service
public class IndexServiceImpl implements IndexService {


    @Autowired
    private PjPosterMapper pjPosterMapper;

    public List<PjPoster> selectAllPoster() {
        return pjPosterMapper.selectAllPoster();
    }
}
