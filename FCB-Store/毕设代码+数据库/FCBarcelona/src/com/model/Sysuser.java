package com.model;

/**
 * Sysuser entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Sysuser implements java.io.Serializable {

	// Fields

	private Integer id;
	private String uname;
	private String upass;
	private String realname;
	private String sex;
	private String birth;
	private String tel;
	private String addr;
	private String delstatus;
	private String type;
	private String email;

	// Constructors

	/** default constructor */
	public Sysuser() {
	}

	/** full constructor */
	public Sysuser(String uname, String upass, String realname, String sex,
			String birth, String tel, String addr, String delstatus, String type,
			String email) {
		this.uname = uname;
		this.upass = upass;
		this.realname = realname;
		this.sex = sex;
		this.birth = birth;
		this.tel = tel;
		this.addr = addr;
		this.delstatus = delstatus;
		this.type = type;
		this.email = email;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpass() {
		return this.upass;
	}

	public void setUpass(String upass) {
		this.upass = upass;
	}

	public String getRealname() {
		return this.realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirth() {
		return this.birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddr() {
		return this.addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getDelstatus() {
		return this.delstatus;
	}

	public void setDelstatus(String delstatus) {
		this.delstatus = delstatus;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}