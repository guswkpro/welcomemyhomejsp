package com.welcomemyhome.project.VO;

public class EstimateVO {
	private int estimate_idx;
	private String estimate_title;
	private String estimate_picture_path;
	private String estimate_content;
	private String estimate_date;
	private String estimate_address;
	private int estimate_answer_count;
	private int user_idx;
	
	public int getEstimate_idx() {
		return estimate_idx;
	}
	public void setEstimate_idx(int estimate_idx) {
		this.estimate_idx = estimate_idx;
	}
	public String getEstimate_title() {
		return estimate_title;
	}
	public void setEstimate_title(String estimate_title) {
		this.estimate_title = estimate_title;
	}
	public String getEstimate_picture_path() {
		return estimate_picture_path;
	}
	public void setEstimate_picture_path(String estimate_picture_path) {
		this.estimate_picture_path = estimate_picture_path;
	}
	public String getEstimate_content() {
		return estimate_content;
	}
	public void setEstimate_content(String estimate_content) {
		this.estimate_content = estimate_content;
	}
	public String getEstimate_date() {
		return estimate_date;
	}
	public void setEstimate_date(String estimate_date) {
		this.estimate_date = estimate_date;
	}
	public String getEstimate_address() {
		return estimate_address;
	}
	public void setEstimate_address(String estimate_address) {
		this.estimate_address = estimate_address;
	}
	public int getEstimate_answer_count() {
		return estimate_answer_count;
	}
	public void setEstimate_answer_count(int estimate_answer_count) {
		this.estimate_answer_count = estimate_answer_count;
	}
	public int getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}
}
