package com.taotao.dao;

import com.taotao.model.PjRole;

import java.util.List;

/**
 * 查询所有的用户
 * @author Administrator
 *
 */
public interface PjRoleMapper {

	/**
	 * 查询所有的用户
	 * @return
	 */
	List<PjRole> selectAllRole();
	
	/**
	 * 通过角色id查询角色
	 * @param id
	 * @return
	 */
	PjRole selectRoleById(Integer id);

	/**
	 * 添加角色
	 * @param pjRole
	 * @return
     */
	int insertRole(PjRole pjRole);

}
