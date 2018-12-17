package com.welcomemyhome.project.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.welcomemyhome.project.DAO.EstimateDAO;
import com.welcomemyhome.project.DAO.UserDAO;
import com.welcomemyhome.project.VO.EstimateAnswerVO;
import com.welcomemyhome.project.VO.EstimateVO;

@Service
public class EstimateServiceImpl implements EstimateService {

	@Inject
	private EstimateDAO estimateDAO;

	@Inject
	private UserDAO userDAO;

	/* GET */
	@Override
	public List<EstimateVO> getEstimateList(int offset) throws Exception {
		List<EstimateVO> estimateList = estimateDAO.getEstimateList(offset);
		estimateList.get(0).setEstiamte_total_count(Integer.parseInt(estimateDAO.getEstimateCount().get(0).getCount()));

		for (int i = 0; i < estimateList.size(); i++) {
			estimateList.get(i).setUser_nickname(userDAO.getUserInformation(estimateList.get(i).getUser_idx() + "").get(i).getUser_nickname());
		}

		return estimateList;
	}

	@Override
	public List<EstimateVO> getEstimateListForUser(int offset, String user_idx) throws Exception {
		List<EstimateVO> estimateList = estimateDAO.getEstimateListForUser(offset, user_idx);
		estimateList.get(0).setEstiamte_total_count(Integer.parseInt(estimateDAO.getEstimateCount().get(0).getCount()));

		for (int i = 0; i < estimateList.size(); i++) {
			estimateList.get(i).setUser_nickname(userDAO.getUserInformation(estimateList.get(i).getUser_idx() + "").get(i).getUser_nickname());
		}

		return estimateList;
	}

	@Override
	public List<EstimateAnswerVO> getEstimateAnswerForCompany(int offset, String user_idx) throws Exception {
		List<EstimateAnswerVO> answerList = estimateDAO.getEstimateAnswerForUser(offset, user_idx);
		answerList.get(0).setAnswer_total_count(Integer.parseInt(estimateDAO.getEstimateAnswerCount().get(0).getCount()));

		for (int i = 0; i < answerList.size(); i++) {
			answerList.get(i).setUser_nickname(userDAO.getUserInformation(answerList.get(i).getUser_idx() + "").get(i).getUser_nickname());
		}

		return answerList;
	}

	@Override
	public List<EstimateVO> getEstimateDetail(String estimate_idx) throws Exception {
		List<EstimateVO> estimateList = estimateDAO.getEstimateDetail(estimate_idx);

		return estimateList;
	}

	@Override
	public List<EstimateAnswerVO> getEstimateAnswerList(int offset, String estimate_idx) throws Exception {
		List<EstimateAnswerVO> answerList = estimateDAO.getEstimateAnswer(offset, estimate_idx);
		answerList.get(0).setAnswer_total_count(Integer.parseInt(estimateDAO.getEstimateAnswerCount().get(0).getCount()));

		for (int i = 0; i < answerList.size(); i++) {
			answerList.get(i).setUser_nickname(userDAO.getUserInformation(answerList.get(i).getUser_idx() + "").get(i).getUser_nickname());
		}

		return answerList;
	}

	@Override
	public List<EstimateAnswerVO> getEstimateAnswerDetail(String answer_idx) throws Exception {
		List<EstimateAnswerVO> answerList = estimateDAO.getEstimateAnswerDetail(answer_idx);

		for (int i = 0; i < answerList.size(); i++) {
			answerList.get(i).setUser_nickname(userDAO.getUserInformation(answerList.get(i).getUser_idx() + "").get(i).getUser_nickname());
		}

		return answerList;
	}

	/* POST */
	@Override
	public void addEstimate(String estimate_title, String estimate_picture_path, String estimate_content, String estimate_date, String estimate_address, String user_idx) throws Exception {
		estimateDAO.addEstimate(estimate_title, estimate_picture_path, estimate_content, estimate_date, estimate_address, user_idx);
	}

	@Override
	public void addEstimateAnswer(String answer_title, String answer_picture_path, String answer_content, String answer_date, String estimate_idx, String user_idx) throws Exception {
		estimateDAO.addEstimateAnswer(answer_title, answer_picture_path, answer_content, answer_date, estimate_idx, user_idx);
	}
}