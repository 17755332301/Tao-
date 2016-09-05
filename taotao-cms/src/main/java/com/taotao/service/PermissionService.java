package com.taotao.service;

import com.taotao.model.PjModule;
import com.taotao.model.PjUser;

import java.util.List;

/**
 * TITLE:
 * USER:TAOTK
 * DATA:2016/9/5
 * TIME:10:20
 * COMPANY:www.51pjia.com
 */
public interface PermissionService {

    /**
     * 通过账户密码查询用户
     * @return
     */
    PjUser selectUserByInfo(PjUser user);

  
}
