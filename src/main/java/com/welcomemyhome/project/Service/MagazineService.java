package com.welcomemyhome.project.Service;

import java.util.List;

import com.welcomemyhome.project.VO.MagazineCommentVO;
import com.welcomemyhome.project.VO.MagazineVO;

public interface MagazineService {
	/* GET */
	public List<MagazineVO> getMagazineList(int offset, String magazine_idx) throws Exception;

	public List<MagazineVO> getMagazineDetail(String user_idx, String magazine_idx) throws Exception;

	public List<MagazineCommentVO> getMagazineComment(String magazine_idx) throws Exception;

	/* POST */
	public void addMagazineLike(String user_idx, String magazine_idx) throws Exception;

	public void addMagazineComment(String comment_content, String user_idx, String magazine_idx) throws Exception;

	/* DELETE */
	public void deleteMagazineLike(String user_idx, String magazine_idx) throws Exception;

	public void deleteMagazineComment(String comment_idx) throws Exception;
}