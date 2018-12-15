package com.welcomemyhome.project.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.welcomemyhome.project.VO.CountVO;
import com.welcomemyhome.project.VO.EstimateAnswerVO;
import com.welcomemyhome.project.VO.EstimateVO;

@Repository
public class EstimateDAOImpl implements EstimateDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String Namespace = "com.example.mapper.EstimateMapper";

	/* GET */
	@Override
	public List<EstimateVO> getEstimateList(int offset) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("offset", offset);
		return sqlSession.selectList(Namespace + ".getEstimateList", parameters);
	}

	@Override
	public List<EstimateVO> getEstimateListForUser(int offset, String user_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("offset", offset);
		parameters.put("user_idx", user_idx);
		return sqlSession.selectList(Namespace + ".getEstimateListForUser", parameters);
	}

	@Override
	public List<EstimateAnswerVO> getEstimateAnswerForUser(int offset, String user_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("offset", offset);
		parameters.put("user_idx", user_idx);
		return sqlSession.selectList(Namespace + ".getEstimateAnswerForUser", parameters);
	}

	@Override
	public List<EstimateVO> getEstimateDetail(String estimate_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("estimate_idx", estimate_idx);
		return sqlSession.selectList(Namespace + ".getEstimateDetail", parameters);
	}

	@Override
	public List<EstimateAnswerVO> getEstimateAnswer(int offset, String estimate_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("offset", offset);
		parameters.put("estimate_idx", estimate_idx);
		return sqlSession.selectList(Namespace + ".getEstimateAnswer", parameters);
	}

	@Override
	public List<EstimateAnswerVO> getEstimateAnswerDetail(String answer_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("answer_idx", answer_idx);
		return sqlSession.selectList(Namespace + ".getEstimateAnswerDetail", parameters);
	}

	@Override
	public List<CountVO> getEstimateCount() throws Exception {
		return sqlSession.selectList(Namespace + ".getEstimateCount");
	}

	@Override
	public List<CountVO> getEstimateAnswerCount() throws Exception {
		return sqlSession.selectList(Namespace + ".getEstimateAnswerCount");
	}

	/* POST */
	@Override
	public void addEstimate(String estimate_title, String estimate_picture_path, String estimate_content, String estimate_date, String estimate_address, String user_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("estimate_title", estimate_title);
		parameters.put("estimate_picture_path", estimate_picture_path);
		parameters.put("estimate_content", estimate_content);
		parameters.put("estimate_date", estimate_date);
		parameters.put("estimate_address", estimate_address);
		parameters.put("user_idx", user_idx);
		sqlSession.selectList(Namespace + ".addEstimate", parameters);
	}

	@Override
	public void addEstimateAnswer(String answer_title, String answer_picture_path, String answer_date, String estimate_idx, String user_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("answer_title", answer_title);
		parameters.put("answer_picture_path", answer_picture_path);
		parameters.put("answer_date", answer_date);
		parameters.put("estimate_idx", estimate_idx);
		parameters.put("user_idx", user_idx);
		sqlSession.selectList(Namespace + ".addEstimateAnswer", parameters);
	}

	/* PUT */
	@Override
	public void editEstimateCount(String estimate_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("estimate_idx", estimate_idx);
		sqlSession.selectList(Namespace + ".addEstimateCount", parameters);
	}
}