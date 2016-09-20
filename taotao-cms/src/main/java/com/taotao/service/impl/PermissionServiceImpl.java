package com.taotao.service.impl;

import com.taotao.dao.*;
import com.taotao.model.PjModule;
import com.taotao.model.PjRole;
import com.taotao.model.PjUser;
import com.taotao.model.PjUserRole;
import com.taotao.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @Autowired
    private PjModuleMapper pjModuleMapper;
    
    @Autowired
    private PjRoleMapper pjRoleMapper;

    @Autowired
    private PjUserRoleMapper pjUserRoleMapper;

    @Autowired
    private PjRoleModuleMapper pjRoleModuleMapper;

    public PjUser selectUserByInfo(PjUser user) {
        return pjUserMapper.selectUserByInfo(user);
    }

    public List<PjModule> selectAllModuleById(Integer id) {
        return pjModuleMapper.selectAllModuleById(id);
    }

    public List<PjUser> selectAllUser() {
        return pjUserMapper.selectAllUser();
    }

	public List<PjRole> selectAllRole() {
		return pjRoleMapper.selectAllRole();
	}

	public PjRole selectRoleById(Integer id) {
		return pjRoleMapper.selectRoleById(id);
	}

    public List<PjModule> selectAllMainModule() {
        return pjModuleMapper.selectAllMainModule();
    }
    public int insertModule(PjModule pjModule) {
        return pjModuleMapper.insertModule(pjModule);
    }
    public int updateUser(PjUser pjUser) {
        return pjUserMapper.updateUser(pjUser);
    }
    public PjUser selectUserById(Integer id) {
        return pjUserMapper.selectUserById(id);
    }
    public int insertRole(PjRole pjRole) {
        return pjRoleMapper.insertRole(pjRole);
    }
    public void deletePermissionByRoleId(Integer id) {
        pjRoleModuleMapper.deletePermissionByRoleId(id);
    }

    public void sendPermissonForRoleByRoleId(Integer id,String str) {
        String[] strs = str.split(",");
        for (String moduleId : strs) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("roleId", id);
            map.put("moduleId", Integer.parseInt(moduleId));
            pjRoleModuleMapper.sendPermissonForRoleByRoleId(map);
        }
    }
    public int selectMaxId() {
        return pjUserMapper.selectMaxId();
    }
    public int insertUserRole(PjUserRole pjUserRole) {
        return pjUserRoleMapper.insertUserRole(pjUserRole);
    }

    public int insertUser(PjUser pjUser) {
        return pjUserMapper.insertUser(pjUser);
    }

    public List<PjModule> selectAllRoleModuleByRoleId(Integer id) {
        return pjModuleMapper.selectAllRoleModuleByRoleId(id);
    }
    public List<PjModule> selectModuleList() {
        return pjModuleMapper.selectModuleList();
    }
    public int userCount(Integer id) {
		return pjUserMapper.userCount(id);
	}


}
