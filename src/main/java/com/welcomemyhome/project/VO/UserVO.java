package com.welcomemyhome.project.VO;

public class UserVO {
	private int user_idx;
	private String user_id;
	private String user_pw;
	private String user_nickname;
	private String user_picture_path;
	private String user_picture_thumbnail_path;
	private String user_join_date;
	private String user_recent_date;
	private String user_leave_date;
	private int user_subscription;
	private int user_auth;

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_nickname() {
		return user_nickname;
	}

	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}

	public String getUser_picture_path() {
		return user_picture_path;
	}

	public void setUser_picture_path(String user_picture_path) {
		this.user_picture_path = user_picture_path;
	}

	public String getUser_picture_thumbnail_path() {
		return user_picture_thumbnail_path;
	}

	public void setUser_picture_thumbnail_path(String user_picture_thumbnail_path) {
		this.user_picture_thumbnail_path = user_picture_thumbnail_path;
	}

	public String getUser_join_date() {
		return user_join_date;
	}

	public void setUser_join_date(String user_join_date) {
		this.user_join_date = user_join_date;
	}

	public String getUser_recent_date() {
		return user_recent_date;
	}

	public void setUser_recent_date(String user_recent_date) {
		this.user_recent_date = user_recent_date;
	}

	public String getUser_leave_date() {
		return user_leave_date;
	}

	public void setUser_leave_date(String user_leave_date) {
		this.user_leave_date = user_leave_date;
	}

	public int getUser_subscription() {
		return user_subscription;
	}

	public void setUser_subscription(int user_subscription) {
		this.user_subscription = user_subscription;
	}

	public int getUser_auth() {
		return user_auth;
	}

	public void setUser_auth(int user_auth) {
		this.user_auth = user_auth;
	}
}