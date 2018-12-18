package com.welcomemyhome.project.VO;

public class MagazineCommentVO {
	private int comment_idx;
	private String comment_content;
	private String comment_post_date;
	private String user_nickname;
	private int magazine_idx;
	private int user_idx;

	public String getUser_nickname() {
		return user_nickname;
	}

	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}

	public int getComment_idx() {
		return comment_idx;
	}

	public void setComment_idx(int idx) {
		this.comment_idx = idx;
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
