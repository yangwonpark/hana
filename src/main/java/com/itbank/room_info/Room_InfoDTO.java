package com.itbank.room_info;

public class Room_InfoDTO {
	
	private int idx, hotel_info_idx, room_kind_idx, view_kind_idx;
	private int headcount, coupon_yn, coupon_idx, cancel, retractable, meal_idx;
	private String name, bed, space, detail, con_facility, notice;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getHotel_info_idx() {
		return hotel_info_idx;
	}
	public void setHotel_info_idx(int hotel_info_idx) {
		this.hotel_info_idx = hotel_info_idx;
	}
	public int getRoom_kind_idx() {
		return room_kind_idx;
	}
	public void setRoom_kind_idx(int room_kind_idx) {
		this.room_kind_idx = room_kind_idx;
	}
	public int getView_kind_idx() {
		return view_kind_idx;
	}
	public void setView_kind_idx(int view_kind_idx) {
		this.view_kind_idx = view_kind_idx;
	}
	public int getHeadcount() {
		return headcount;
	}
	public void setHeadcount(int headcount) {
		this.headcount = headcount;
	}
	public int getCoupon_yn() {
		return coupon_yn;
	}
	public void setCoupon_yn(int coupon_yn) {
		this.coupon_yn = coupon_yn;
	}
	public int getCoupon_idx() {
		return coupon_idx;
	}
	public void setCoupon_idx(int coupon_idx) {
		this.coupon_idx = coupon_idx;
	}
	public int getCancel() {
		return cancel;
	}
	public void setCancel(int cancel) {
		this.cancel = cancel;
	}
	public int getRetractable() {
		return retractable;
	}
	public void setRetractable(int retractable) {
		this.retractable = retractable;
	}
	public int getMeal_idx() {
		return meal_idx;
	}
	public void setMeal_idx(int meal_idx) {
		this.meal_idx = meal_idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBed() {
		return bed;
	}
	public void setBed(String bed) {
		this.bed = bed;
	}
	public String getSpace() {
		return space;
	}
	public void setSpace(String space) {
		this.space = space;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getCon_facility() {
		return con_facility;
	}
	public void setCon_facility(String con_facility) {
		this.con_facility = con_facility;
	}
	public String getNotice() {
		return notice;
	}
	public void setNotice(String notice) {
		this.notice = notice;
	}
}