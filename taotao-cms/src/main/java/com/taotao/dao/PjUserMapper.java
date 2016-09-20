package com.taotao.dao;


import com.taotao.model.PjUser;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PjUserMapper {

	/**
	 * 通过账户密码查询用户
	 * @return
	 */
	PjUser selectUserByInfo(PjUser user);

	/**
	 * 查询所有的用户
	 * @return
     */
	List<PjUser> selectAllUser();

	/**
	 * 通过用户的id查询用户的id
	 * @param id
	 * @return
     */
	PjUser selectUserById(Integer id);
	/**
	 * 查询所有用户数量
	 * @return
	 */
	int userCount(Integer id);

	/**
	 *
	 * @param pjUser
	 * @return
     */
	int insertUser(PjUser pjUser);

	/**
	 * 获取最大的id
	 * @return
	 */
	int selectMaxId();

	/**
	 * 更新
	 * @param pjUser
	 * @return
     */
	int updateUser(PjUser pjUser);
}
