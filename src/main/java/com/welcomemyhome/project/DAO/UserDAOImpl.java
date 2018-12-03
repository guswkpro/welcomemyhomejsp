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

	@Override
	public List<UserVO> selectUser(String id) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("user_id", id);
		return sqlSession.selectList(Namespace + ".selectUser", parameters);
	}

}