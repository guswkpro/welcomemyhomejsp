package com.welcomemyhome.project.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.welcomemyhome.project.DAO.MagazineDAO;
import com.welcomemyhome.project.DAO.UserDAO;
import com.welcomemyhome.project.VO.MagazineCommentVO;
import com.welcomemyhome.project.VO.MagazineVO;

@Service
public class MagazineServiceImpl implements MagazineService {

	@Inject
	private MagazineDAO dao;
	
	@Inject
	private UserDAO userDAO;

	/* GET */
	@Override
	public List<MagazineVO> getMagazineList(int offset, String user_idx) throws Exception {
		List<MagazineVO> magazineList = dao.getMagazineList(offset);
		magazineList.get(0).setMagazine_total_count(Integer.parseInt(dao.getMagazineCount().get(0).getCount()));
		for (int i = 0; i < magazineList.size(); i++) {
			if (dao.getMagazineCommentCheck(user_idx, magazineList.get(i).getMagazine_idx() + "").size() != 0) {
				magazineList.get(i).setMagazine_comment_check(1);
			} else {
				magazineList.get(i).setMagazine_comment_check(0);
			}

			if (dao.getMagazineLikeCheck(user_idx, magazineList.get(i).getMagazine_idx() + "").size() != 0) {
				magazineList.get(i).setMagazine_like_check(1);
			} else {
				magazineList.get(i).setMagazine_like_check(0);
			}
		}

		return magazineList;
	}

	@Override
	public List<MagazineVO> getMagazineDetail(String user_idx, String magazine_idx) throws Exception {
		List<MagazineVO> magazineList = dao.getMagazineDetail(user_idx, magazine_idx);
		dao.editMagazineHitCount(magazine_idx);

		if (dao.getMagazineCommentCheck(user_idx, magazineList.get(0).getMagazine_idx() + "").size() != 0) {
			magazineList.get(0).setMagazine_comment_check(1);
		} else {
			magazineList.get(0).setMagazine_comment_check(0);
		}
		if (dao.getMagazineLikeCheck(user_idx, magazineList.get(0).getMagazine_idx() + "").size() != 0) {
			magazineList.get(0).setMagazine_like_check(1);
		} else {
			magazineList.get(0).setMagazine_like_check(0);
		}
		magazineList.get(0).setMagazine_hit_count(magazineList.get(0).getMagazine_hit_count() + 1);

		return magazineList;
	}

	@Override
	public List<MagazineCommentVO> getMagazineComment(String magazine_idx) throws Exception {
		List<MagazineCommentVO> commentList = dao.getMagazineComment(magazine_idx);
		for (int i = 0; i < commentList.size(); i++) {
			commentList.get(i).setUser_nickname(userDAO.getUserInformation(commentList.get(0).getUser_idx() + "").get(0).getUser_nickname());
		}

		return commentList;
	}

	/* POST */
	@Override
	public void addMagazineLike(String user_idx, String magazine_idx) throws Exception {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

		dao.addMagazineLike(user_idx, magazine_idx, sdf.format(date).toString());
		dao.editMagazineLikeCount(magazine_idx, 1);
	}

	@Override
	public void addMagazineComment(String comment_content, String user_idx, String magazine_idx) throws Exception {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

		dao.addMagazineComment(comment_content, sdf.format(date).toString(), user_idx, magazine_idx);
		dao.editMagazineCommentCount(magazine_idx, 1);
	}

	/* DELETE */
	@Override
	public void deleteMagazineLike(String user_idx, String magazine_idx) throws Exception {
		dao.deleteMagazineLike(user_idx, magazine_idx);
		dao.editMagazineLikeCount(magazine_idx, -1);
	}

	@Override
	public void deleteMagazineComment(String comment_idx) throws Exception {

	}
}