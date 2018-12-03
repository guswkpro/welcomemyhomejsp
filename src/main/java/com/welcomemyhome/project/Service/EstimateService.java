package com.welcomemyhome.project.Service;

import java.util.List;

import com.welcomemyhome.project.VO.EstimateVO;

public interface EstimateService {
    
    public List<EstimateVO> selectEstimate(int offset) throws Exception;
}