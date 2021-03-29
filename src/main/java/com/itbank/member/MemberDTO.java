package com.itbank.member;

import java.sql.Date;

public class MemberDTO {

	private int idx;
	private String userid;
	private String userpw;
	private String userkind;
	private String name;
	private String pnum;
	private Date birth_date;
	private int mileage;
	private int mnum;
	private Date join_date;
	private int gender;
	private int foreign;
	private int expiry_date;
	private int agree_sms;
	private int agree_email;
	private int agree_post;
	private int agree_pnum;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUserkind() {
		return userkind;
	}
	public void setUserkind(String userkind) {
		this.userkind = userkind;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPnum() {
		return pnum;
	}
	public void setPnum(String pnum) {
		this.pnum = pnum;
	}
	public Date getBirth_date() {
		return birth_date;
	}
	public void setBirth_date(Date birth_date) {
		this.birth_date = birth_date;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	public int getMnum() {
		return mnum;
	}
	public void setMnum(int mnum) {
		this.mnum = mnum;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public int getForeign() {
		return foreign;
	}
	public void setForeign(int foreign) {
		this.foreign = foreign;
	}
	public int getExpiry_date() {
		return expiry_date;
	}
	public void setExpiry_date(int expiry_date) {
		this.expiry_date = expiry_date;
	}
	public int getAgree_sms() {
		return agree_sms;
	}
	public void setAgree_sms(int agree_sms) {
		this.agree_sms = agree_sms;
	}
	public int getAgree_email() {
		return agree_email;
	}
	public void setAgree_email(int agree_email) {
		this.agree_email = agree_email;
	}
	public int getAgree_post() {
		return agree_post;
	}
	public void setAgree_post(int agree_post) {
		this.agree_post = agree_post;
	}
	public int getAgree_pnum() {
		return agree_pnum;
	}
	public void setAgree_pnum(int agree_pnum) {
		this.agree_pnum = agree_pnum;
	}

}
