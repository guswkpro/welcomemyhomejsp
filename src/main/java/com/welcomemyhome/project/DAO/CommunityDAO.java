package com.welcomemyhome.project.DAO;

import java.util.List;

import com.welcomemyhome.project.VO.CommunityVO;

public interface CommunityDAO {

	public List<CommunityVO> selectCommunity(int offset) throws Exception;
}