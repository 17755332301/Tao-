package com.taotao.dao;

import java.util.Map;

/**
 * TITLE:
 * USER:TAOTK
 * DATA:2016/9/8
 * TIME:9:46
 * COMPANY:www.51pjia.com
 */
public interface PjRoleModuleMapper {

    /**
     * 删除角色和功能的中间表角色原始数据
     * @param id
     */
    void deletePermissionByRoleId(Integer id);

    /**
     * 重新定义角色的权限
     * @param map
     */
    void sendPermissonForRoleByRoleId(Map<String,Object> map);
}
