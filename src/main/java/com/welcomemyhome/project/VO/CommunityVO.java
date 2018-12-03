package com.welcomemyhome.project.VO;

public class CommunityVO {
	private int community_idx;
	private String community_title;
	private String community_content;
	private String community_post_date;
	private String community_edit_date;
	private String community_picture_path;
	private String community_thumbnail_path;
	private int community_like_count;
	private int community_comment_count;
	private int community_hit_count;
	private int user_idx;
	
	public int getCommunity_idx() {
		return community_idx;
	}
	public void setCommunity_idx(int community_idx) {
		this.community_idx = community_idx;
	}
	public String getCommunity_title() {
		return community_title;
	}
	public void setCommunity_title(String community_title) {
		this.community_title = community_title;
	}
	public String getCommunity_content() {
		return community_content;
	}
	public void setCommunity_content(String community_content) {
		this.community_content = community_content;
	}
	public String getCommunity_post_date() {
		return community_post_date;
	}
	public void setCommunity_post_date(String community_post_date) {
		this.community_post_date = community_post_date;
	}
	public String getCommunity_edit_date() {
		return community_edit_date;
	}
	public void setCommunity_edit_date(String community_edit_date) {
		this.community_edit_date = community_edit_date;
	}
	public String getCommunity_picture_path() {
		return community_picture_path;
	}
	public void setCommunity_picture_path(String community_picture_path) {
		this.community_picture_path = community_picture_path;
	}
	public String getCommunity_thumbnail_path() {
		return community_thumbnail_path;
	}
	public void setCommunity_thumbnail_path(String community_thumbnail_path) {
		this.community_thumbnail_path = community_thumbnail_path;
	}
	public int getCommunity_like_count() {
		return community_like_count;
	}
	public void setCommunity_like_count(int community_like_count) {
		this.community_like_count = community_like_count;
	}
	public int getCommunity_comment_count() {
		return community_comment_count;
	}
	public void setCommunity_comment_count(int community_comment_count) {
		this.community_comment_count = community_comment_count;
	}
	public int getCommunity_hit_count() {
		return community_hit_count;
	}
	public void setCommunity_hit_count(int community_hit_count) {
		this.community_hit_count = community_hit_count;
	}
	public int getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}
}
