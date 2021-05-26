package com.apnidukaan.bean;

import java.io.Serializable;

public class UserBean implements Serializable {
	private int id;
	private String name, shopname, shopphoto, emailid, userpassword, contact, about, prepaiddiscount;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getShopname() {
		return shopname;
	}
	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
	public String getShopphoto() {
		return shopphoto;
	}
	public void setShopphoto(String shopphoto) {
		this.shopphoto = shopphoto;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public String getPrepaiddiscount() {
		return prepaiddiscount;
	}
	public void setPrepaiddiscount(String prepaiddiscount) {
		this.prepaiddiscount = prepaiddiscount;
	}
	
	
}
