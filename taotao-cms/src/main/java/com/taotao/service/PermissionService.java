package com.taotao.service;

import com.taotao.model.PjModule;
import com.taotao.model.PjRole;
import com.taotao.model.PjUser;
import com.taotao.model.PjUserRole;

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
	 * 查询所有的主菜单
	 * @return
	 */
	List<PjModule> selectAllMainModule();

	/**
	 * 插入权限
	 * @param pjModule
	 * @return
	 */
	int insertModule(PjModule pjModule);

	/**
	 * 更新
	 * @param pjUser
	 * @return
	 */
	int updateUser(PjUser pjUser);
	/**
	 * 通过用户的id查询用户的id
	 * @param id
	 * @return
	 */
	PjUser selectUserById(Integer id);
	/**
	 * 添加角色
	 * @param pjRole
	 * @return
	 */
	int insertRole(PjRole pjRole);
	/**
	 * 删除角色和功能的中间表角色原始数据
	 * @param id
	 */
	void deletePermissionByRoleId(Integer id);

	/**
	 * 重新定义角色的权限
	 * @param id
	 * @param str
     */
	void sendPermissonForRoleByRoleId(Integer id,String str);
	/**
	 * 获取最大的id
	 * @return
	 */
	int selectMaxId();
	/**
	 * 添加
	 * @param pjUserRole
	 * @return
	 */
	int insertUserRole(PjUserRole pjUserRole);
	/**
	 * 插入用户
	 * @param pjUser
	 * @return
	 */
	int insertUser(PjUser pjUser);
	/**
	 * 通过角色的id查询所有的功能模块
	 * @param id
	 * @return
	 */
	List<PjModule> selectAllRoleModuleByRoleId(Integer id);
	/**
	 * 查询所有的模块
	 * @return
	 */
	List<PjModule> selectModuleList();
	/**
	 * 查询所有用户数量
	 * @return
	 */
	int userCount(Integer id);
	/**
	 * 通过id查询角色
	 * @param id
	 * @return
	 */
	PjRole selectRoleById(Integer id);
    /**
     * 通过账户密码查询用户
     * @return
     */
    PjUser selectUserByInfo(PjUser user);


    /**
     * 通过id查询功能
     * @param id
     * @return
     */
   List<PjModule> selectAllModuleById(Integer id);

    /**
     * 查询所有的用户
     * @return
     */
    List<PjUser> selectAllUser();
    
    /**
	 * 查询所有的用户
	 * @return
	 */
	List<PjRole> selectAllRole();
}
