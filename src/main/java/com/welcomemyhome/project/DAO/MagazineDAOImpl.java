package com.welcomemyhome.project.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.welcomemyhome.project.VO.CountVO;
import com.welcomemyhome.project.VO.MagazineCommentVO;
import com.welcomemyhome.project.VO.MagazineLikeVO;
import com.welcomemyhome.project.VO.MagazineVO;

@Repository
public class MagazineDAOImpl implements MagazineDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String Namespace = "com.example.mapper.MagazineMapper";

	/* GET */
	@Override
	public List<MagazineVO> getMagazineList(int offset) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("offset", offset);
		return sqlSession.selectList(Namespace + ".getMagazineList", parameters);
	}

	@Override
	public List<MagazineVO> getMagazineDetail(String user_idx, String magazine_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("user_idx", user_idx);
		parameters.put("magazine_idx", magazine_idx);
		return sqlSession.selectList(Namespace + ".getMagazineDetail", parameters);
	}

	@Override
	public List<MagazineCommentVO> getMagazineComment(String magazine_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("magazine_idx", magazine_idx);
		return sqlSession.selectList(Namespace + ".getMagazineComment", parameters);
	}

	@Override
	public List<MagazineLikeVO> getMagazineLikeCheck(String user_idx, String magazine_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("user_idx", user_idx);
		parameters.put("magazine_idx", magazine_idx);
		return sqlSession.selectList(Namespace + ".getMagazineLikeCheck", parameters);
	}

	@Override
	public List<MagazineCommentVO> getMagazineCommentCheck(String user_idx, String magazine_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("user_idx", user_idx);
		parameters.put("magazine_idx", magazine_idx);
		return sqlSession.selectList(Namespace + ".getMagazineCommentCheck", parameters);
	}

	@Override
	public List<CountVO> getMagazineCount() throws Exception {
		return sqlSession.selectList(Namespace + ".getMagazineCount");
	}

	/* POST */
	@Override
	public void addMagazineLike(String user_idx, String magazine_idx, String date) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("user_idx", user_idx);
		parameters.put("magazine_idx", magazine_idx);
		parameters.put("like_date", date);
		sqlSession.selectList(Namespace + ".addMagazineLike", parameters);
	}

	@Override
	public void addMagazineComment(String comment_content, String date, String user_idx, String magazine_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("comment_content", comment_content);
		parameters.put("comment_post_date", date);
		parameters.put("user_idx", user_idx);
		parameters.put("magazine_idx", magazine_idx);
		sqlSession.selectList(Namespace + ".addMagazineComment", parameters);
	}

	/* PUT */
	@Override
	public void editMagazineHitCount(String magazine_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("magazine_idx", magazine_idx);
		sqlSession.selectList(Namespace + ".editMagazineHitCount", parameters);
	}

	@Override
	public void editMagazineLikeCount(String magazine_idx, int count) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("magazine_idx", magazine_idx);
		parameters.put("count",  count);
		sqlSession.selectList(Namespace + ".editMagazineLikeCount", parameters);
	}

	@Override
	public void editMagazineCommentCount(String magazine_idx, int count) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("magazine_idx", magazine_idx);
		parameters.put("count",  count);
		sqlSession.selectList(Namespace + ".editMagazineCommentCount", parameters);
	}

	/* DELETE */
	@Override
	public void deleteMagazineLike(String user_idx, String magazine_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("magazine_idx", magazine_idx);
		parameters.put("user_idx",  user_idx);
		sqlSession.selectList(Namespace + ".deleteMagazineLike", parameters);
	}

	@Override
	public void deleteMagazineComment(String comment_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("comment_idx", comment_idx);
		sqlSession.selectList(Namespace + ".deleteMagazineComment", parameters);
	}
}