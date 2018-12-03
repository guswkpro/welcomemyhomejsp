package com.welcomemyhome.project.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.welcomemyhome.project.DAO.EstimateDAO;
import com.welcomemyhome.project.VO.EstimateVO;

@Service
public class EstimateServiceImpl implements EstimateService {
 
    @Inject
    private EstimateDAO dao;
    
    @Override
    public List<EstimateVO> selectEstimate(int offset) throws Exception {
 
        return dao.selectEstimate(offset);
    }
}