package com.welcomemyhome.project.VO;

public class CommunityLikeVO {
	private int like_idx;
	private String like_date;
	private int community_idx;
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
	public int getCommunity_idx() {
		return community_idx;
	}
	public void setCommunity_idx(int community_idx) {
		this.community_idx = community_idx;
	}
	public int getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}
}
