package com.ibm.gbs.gbs_cai_web.vo;

public class BusVO {
	private int idx;
	private String user_id;
	private String bus_info;
	private String bus_type; // 토요일 오전 탑승 버스, 일요일 둘레길 탑승 버스(필요시 사용)
	private String depart_time;

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getBus_info() {
		return bus_info;
	}

	public void setBus_info(String bus_info) {
		this.bus_info = bus_info;
	}

	public String getBus_type() {
		return bus_type;
	}

	public void setBus_type(String bus_type) {
		this.bus_type = bus_type;
	}

	public String getDepart_time() {
		return depart_time;
	}

	public void setDepart_time(String depart_time) {
		this.depart_time = depart_time;
	}

}
