package com.taotao.dao;


import com.taotao.model.PjUser;


public interface PjUserMapper {

	/**
	 * 通过账户密码查询用户
	 * @return
	 */
	PjUser selectUserByInfo(PjUser user);

}
