package com.welcomemyhome.project.Service;

import java.io.File;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.welcomemyhome.project.DAO.MagazineDAO;
import com.welcomemyhome.project.VO.MagazineCommentVO;
import com.welcomemyhome.project.VO.MagazineVO;

@Service
public class MagazineServiceImpl implements MagazineService {

	@Inject
	private MagazineDAO dao;

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
		return magazineList;
	}

	@Override
	public List<MagazineCommentVO> getMagazineComment(String magazine_idx) throws Exception {
		return dao.getMagazineComment(magazine_idx);
	}

	/* POST */
	@Override
	public void addMagazineLike(String user_idx, String magazine_idx, String date) throws Exception {

	}

	@Override
	public void addMagazineComment(String comment_content, String date, String user_idx, String magazine_idx) throws Exception {

	}

	/* DELETE */
	@Override
	public void deleteMagazineLike(String user_idx, String magazine_idx) throws Exception {

	}

	@Override
	public void deleteMagazineComment(String comment_idx) throws Exception {

	}
}