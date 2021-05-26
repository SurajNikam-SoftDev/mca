package com.apnidukaan.bean;

import java.io.Serializable;

public class ShopBean implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id, prepaiddiscount;
	private String shopname, ownername, about, photo, shopcontact;	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getPrepaiddiscount() {
		return prepaiddiscount;
	}
	public void setPrepaiddiscount(int prepaiddiscount) {
		this.prepaiddiscount = prepaiddiscount;
	}
	
	public String getShopcontact() {
		return shopcontact;
	}
	public void setShopcontact(String shopcontact) {
		this.shopcontact = shopcontact;
	}
	
	
	
	public String getShopname() {
		return shopname;
	}
	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
	
	public String getOwnername() {
		return ownername;
	}
	public void setOwnername(String ownername) {
		this.ownername = ownername;
	}
	
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	
	
}
