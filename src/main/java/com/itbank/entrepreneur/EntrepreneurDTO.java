package com.itbank.entrepreneur;

import java.util.Date;

public class EntrepreneurDTO {

	private int idx, member_idx, tax_invoice;
	private String brand_name, shop_eng, shop_name, brand_info, represent, classify, report_num, sales_loc, pnum, email; 
	private Date confirm_time;

	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public int getTax_invoice() {
		return tax_invoice;
	}
	public void setTax_invoice(int tax_invoice) {
		this.tax_invoice = tax_invoice;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	public String getShop_eng() {
		return shop_eng;
	}
	public void setShop_eng(String shop_eng) {
		this.shop_eng = shop_eng;
	}
	public String getBrand_info() {
		return brand_info;
	}
	public void setBrand_info(String brand_info) {
		this.brand_info = brand_info;
	}
	public String getRepresent() {
		return represent;
	}
	public void setRepresent(String represent) {
		this.represent = represent;
	}
	public String getClassify() {
		return classify;
	}
	public void setClassify(String classify) {
		this.classify = classify;
	}
	public String getReport_num() {
		return report_num;
	}
	public void setReport_num(String report_num) {
		this.report_num = report_num;
	}
	public String getSales_loc() {
		return sales_loc;
	}
	public void setSales_loc(String sales_loc) {
		this.sales_loc = sales_loc;
	}
	public String getPnum() {
		return pnum;
	}
	public void setPnum(String pnum) {
		this.pnum = pnum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getConfirm_time() {
		return confirm_time;
	}
	public void setConfirm_time(Date confirm_time) {
		this.confirm_time = confirm_time;
	}


}
