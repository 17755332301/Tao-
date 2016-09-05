package com.taotao.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.taotao.dao.PjUserMapper;
import com.taotao.model.PjUser;
import com.taotao.service.PermissionService;

/**
 * TITLE:权限的服务层
 * USER:TAOTK
 * DATA:2016/9/5
 * TIME:10:21
 * COMPANY:www.51pjia.com
 */
@Service
public class PermissionServiceImpl implements PermissionService {

    @Autowired
    private PjUserMapper pjUserMapper;


    public PjUser selectUserByInfo(PjUser user) {
        return pjUserMapper.selectUserByInfo(user);
    }

}
