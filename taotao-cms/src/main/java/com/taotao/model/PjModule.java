package com.taotao.model;

public class PjModule {

	
	private Integer id;
	private Integer pid;
	private String mod_name;
	private String mod_comment;
	private String url;
	private Integer modu_type;
	private String remark;
	private Boolean checked = false;
	private Boolean open = false;
	private String name;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Boolean getChecked() {
		return checked;
	}
	public void setChecked(Boolean checked) {
		this.checked = checked;
	}
	public Boolean getOpen() {
		return open;
	}
	public void setOpen(Boolean open) {
		this.open = open;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getMod_name() {
		return mod_name;
	}
	public void setMod_name(String mod_name) {
		this.mod_name = mod_name;
	}
	public String getMod_comment() {
		return mod_comment;
	}
	public void setMod_comment(String mod_comment) {
		this.mod_comment = mod_comment;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Integer getModu_type() {
		return modu_type;
	}
	public void setModu_type(Integer modu_type) {
		this.modu_type = modu_type;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
}
