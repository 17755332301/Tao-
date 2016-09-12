package com.taotao.dao;

import com.taotao.model.PjUserRole;

/**
 * TITLE:用户和角色的中间表
 * USER:TAOTK
 * DATA:2016/9/7
 * TIME:15:16
 * COMPANY:www.51pjia.com
 */
public interface PjUserRoleMapper {

    /**
     * 添加
     * @param pjUserRole
     * @return
     */
    int insertUserRole(PjUserRole pjUserRole);

}
