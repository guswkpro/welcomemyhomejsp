package com.welcomemyhome.project.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.welcomemyhome.project.VO.CommunityVO;

@Repository
public class CommunityDAOImpl implements CommunityDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String Namespace = "com.example.mapper.CommunityMapper";

	@Override
	public List<CommunityVO> selectCommunity(int offset) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("offset", offset);
		return sqlSession.selectList(Namespace + ".selectCommunity", parameters);
	}

}