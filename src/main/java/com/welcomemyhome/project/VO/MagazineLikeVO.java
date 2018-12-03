package com.welcomemyhome.project.VO;

public class MagazineLikeVO {
	private int like_idx;
	private String like_date;
	private int magazine_idx;
	private int user_idx;
	
	public int getLike_idx() {
		return like_idx;
	}
	public void setLike_idx(int like_idx) {
		this.like_idx = like_idx;
	}
	public String getLike_date() {
		return like_date;
	}
	public void setLike_date(String like_date) {
		this.like_date = like_date;
	}
	public int getMagazine_idx() {
		return magazine_idx;
	}
	public void setMagazine_idx(int magazine_idx) {
		this.magazine_idx = magazine_idx;
	}
	public int getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}
}
