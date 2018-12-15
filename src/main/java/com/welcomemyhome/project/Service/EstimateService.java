package com.welcomemyhome.project.Service;

import java.util.List;

import com.welcomemyhome.project.VO.CountVO;
import com.welcomemyhome.project.VO.EstimateAnswerVO;
import com.welcomemyhome.project.VO.EstimateVO;

public interface EstimateService {
    /* GET */
	public List<EstimateVO> getEstimateList(int offset) throws Exception;

	public List<EstimateAnswerVO> getEstimateAnswerForCompany(int offset, String user_idx) throws Exception;

	public List<EstimateVO> getEstimateDetail(String estimate_idx) throws Exception;

	public List<EstimateAnswerVO> getEstimateAnswerList(int offset, String estimate_idx) throws Exception;

	public List<EstimateAnswerVO> getEstimateAnswerDetail(String answer_idx) throws Exception;

	/* POST */
	public void addEstimate(String estimate_title, String estimate_picture_path, String estimate_content, String estimate_date, String estimate_address, String user_idx) throws Exception;

	public void addEstimateAnswer(String answer_title, String answer_picture_path, String answer_date, String estimate_idx, String user_idx) throws Exception;
}