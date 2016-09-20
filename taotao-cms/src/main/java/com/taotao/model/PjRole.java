package com.taotao.model;

import java.io.Serializable;

/**
 * @author Administrator
 *
 */
public class PjRole implements Serializable {

	private Integer id;
	private String role_name;
	private String remark;

	private Integer roleCount;// 每个角色的数量

	public Integer getRoleCount() {
		return roleCount;
	}

	public void setRoleCount(Integer roleCount) {
		this.roleCount = roleCount;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRole_name() {
		return role_name;
	}

	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}
