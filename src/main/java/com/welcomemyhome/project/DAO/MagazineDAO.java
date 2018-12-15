package com.welcomemyhome.project.DAO;

import java.util.List;

import com.welcomemyhome.project.VO.CountVO;
import com.welcomemyhome.project.VO.MagazineCommentVO;
import com.welcomemyhome.project.VO.MagazineLikeVO;
import com.welcomemyhome.project.VO.MagazineVO;

public interface MagazineDAO {
	/* GET */
	public List<MagazineVO> getMagazineList(int offset) throws Exception;

	public List<MagazineVO> getMagazineDetail(String user_idx, String magazine_idx) throws Exception;

	public List<MagazineCommentVO> getMagazineComment(String magazine_idx) throws Exception;

	public List<MagazineLikeVO> getMagazineLikeCheck(String user_idx, String magazine_idx) throws Exception;

	public List<MagazineCommentVO> getMagazineCommentCheck(String user_idx, String magazine_idx) throws Exception;

	public List<CountVO> getMagazineCount() throws Exception;

	/* POST */
	public void addMagazineLike(String user_idx, String magazine_idx, String date) throws Exception;

	public void addMagazineComment(String comment_content, String date, String user_idx, String magazine_idx) throws Exception;

	/* PUT */
	public void editMagazineHitCount(String magazine_idx) throws Exception;

	public void editMagazineLikeCount(String magazine_idx, int count) throws Exception;

	public void editMagazineCommentCount(String magazine_idx, int count) throws Exception;

	/* DELETE */
	public void deleteMagazineLike(String user_idx, String magazine_idx) throws Exception;

	public void deleteMagazineComment(String comment_idx) throws Exception;
}