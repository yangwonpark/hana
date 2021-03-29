package com.itbank.local;

public class LocalDTO {
	
	private int idx, metro_idx, code, airport_ch;
	private String name, full_code;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getMetro_idx() {
		return metro_idx;
	}
	public void setMetro_idx(int metro_idx) {
		this.metro_idx = metro_idx;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public int getAirport_ch() {
		return airport_ch;
	}
	public void setAirport_ch(int airport_ch) {
		this.airport_ch = airport_ch;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFull_code() {
		return full_code;
	}
	public void setFull_code(String full_code) {
		this.full_code = full_code;
	}
}