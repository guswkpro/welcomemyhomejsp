package com.welcomemyhome.project.DAO;

import java.util.List;

import com.welcomemyhome.project.VO.EstimateVO;

public interface EstimateDAO {

	public List<EstimateVO> selectEstimate(int offset) throws Exception;
}