package com.itbank.tour_price;

public class Tour_PriceDTO {

	private int idx, tour_item_idx, age_idx, weekend, price, dc_price;
	private String days;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getTour_item_idx() {
		return tour_item_idx;
	}
	public void setTour_item_idx(int tour_item_idx) {
		this.tour_item_idx = tour_item_idx;
	}
	public int getAge_idx() {
		return age_idx;
	}
	public void setAge_idx(int age_idx) {
		this.age_idx = age_idx;
	}
	public int getWeekend() {
		return weekend;
	}
	public void setWeekend(int weekend) {
		this.weekend = weekend;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDc_price() {
		return dc_price;
	}
	public void setDc_price(int dc_price) {
		this.dc_price = dc_price;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
}