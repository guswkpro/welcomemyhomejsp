package com.welcomemyhome.project.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.welcomemyhome.project.DAO.EstimateDAO;
import com.welcomemyhome.project.VO.EstimateAnswerVO;
import com.welcomemyhome.project.VO.EstimateVO;

@Service
public class EstimateServiceImpl implements EstimateService {
 
    @Inject
    private EstimateDAO dao;
    
    /* GET */
    @Override
    public List<EstimateVO> getEstimateList(int offset) throws Exception {
 
        return dao.getEstimateList(offset);
    }

	@Override
	public List<EstimateAnswerVO> getEstimateAnswerForCompany(int offset, String user_idx) throws Exception {
		return null;
	}

	@Override
	public List<EstimateVO> getEstimateDetail(String estimate_idx) throws Exception {
		return null;
	}

	@Override
	public List<EstimateAnswerVO> getEstimateAnswerList(int offset, String estimate_idx) throws Exception {
		return null;
	}

	@Override
	public List<EstimateAnswerVO> getEstimateAnswerDetail(String answer_idx) throws Exception {
		return null;
	}

	/* POST */
	@Override
	public void addEstimate(String estimate_title, String estimate_picture_path, String estimate_content, String estimate_date, String estimate_address, String user_idx) throws Exception {
		
	}

	@Override
	public void addEstimateAnswer(String answer_title, String answer_picture_path, String answer_date, String estimate_idx, String user_idx) throws Exception {
		
	}
}