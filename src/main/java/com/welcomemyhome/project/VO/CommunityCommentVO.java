package com.welcomemyhome.project.VO;

public class CommunityCommentVO {
	private int comment_idx;
	private String comment_content;
	private String comment_post_date;
	private int community_idx;
	private int user_idx;
	
	public int getComment_idx() {
		return comment_idx;
	}
	public void setComment_idx(int comment_idx) {
		this.comment_idx = comment_idx;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public String getComment_post_date() {
		return comment_post_date;
	}
	public void setComment_post_date(String comment_post_date) {
		this.comment_post_date = comment_post_date;
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