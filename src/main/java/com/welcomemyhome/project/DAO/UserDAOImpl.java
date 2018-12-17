package com.welcomemyhome.project.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.welcomemyhome.project.VO.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String Namespace = "com.example.mapper.UserMapper";

	/* GET */
	@Override
	public List<UserVO> getUserIDAuth(String id) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("user_id", id);
		return sqlSession.selectList(Namespace + ".getUserIDAuth", parameters);
	}

	@Override
	public List<UserVO> getUserInformation(String idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("user_idx", idx);
		return sqlSession.selectList(Namespace + ".getUserInformation", parameters);
	}

	@Override
	public List<UserVO> getIDCheck(String id) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("user_id", id);
		return sqlSession.selectList(Namespace + ".getIDCheck", parameters);
	}

	@Override
	public List<UserVO> getNickNameCheck(String nickname) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("user_nickname", nickname);
		return sqlSession.selectList(Namespace + ".getNicknameCheck", parameters);
	}

	/* POST */
	@Override
	public void signup(String id, String pw, String nickname, String date, String subscription, String auth)
			throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("user_id", id);
		parameters.put("user_pw", pw);
		parameters.put("user_nickname", nickname);
		parameters.put("user_join_date", date);
		parameters.put("user_subscription", subscription);
		parameters.put("user_auth", auth);
		sqlSession.selectList(Namespace + ".getNicknameCheck", parameters);
	}

	/* PUT */
	@Override
	public void editUserConnectDate(int user_idx, String date) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("user_idx", user_idx);
		parameters.put("user_recent_date", date);
		sqlSession.selectList(Namespace + ".editUserConnectDate", parameters);
	}
}