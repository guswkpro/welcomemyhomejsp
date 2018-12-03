package com.welcomemyhome.project.VO;

public class EstimateAnswerVO {
	private int answer_idx;
	private String answer_title;
	private String answer_picture_path;
	private String answer_content;
	private String answer_date;
	private int estimate_idx;
	private int user_idx;
	
	public int getAnswer_idx() {
		return answer_idx;
	}
	public void setAnswer_idx(int answer_idx) {
		this.answer_idx = answer_idx;
	}
	public String getAnswer_title() {
		return answer_title;
	}
	public void setAnswer_title(String answer_title) {
		this.answer_title = answer_title;
	}
	public String getAnswer_picture_path() {
		return answer_picture_path;
	}
	public void setAnswer_picture_path(String answer_picture_path) {
		this.answer_picture_path = answer_picture_path;
	}
	public String getAnswer_content() {
		return answer_content;
	}
	public void setAnswer_content(String answer_content) {
		this.answer_content = answer_content;
	}
	public String getAnswer_date() {
		return answer_date;
	}
	public void setAnswer_date(String answer_date) {
		this.answer_date = answer_date;
	}
	public int getEstimate_idx() {
		return estimate_idx;
	}
	public void setEstimate_idx(int estimate_idx) {
		this.estimate_idx = estimate_idx;
	}
	public int getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}
}
