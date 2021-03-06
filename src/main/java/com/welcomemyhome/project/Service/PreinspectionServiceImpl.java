package com.welcomemyhome.project.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.welcomemyhome.project.DAO.PreinspectionDAO;
import com.welcomemyhome.project.VO.PreinspectionPinVO;
import com.welcomemyhome.project.VO.PreinspectionVO;

@Service
public class PreinspectionServiceImpl implements PreinspectionService {
	@Inject
	private PreinspectionDAO preinspectionDAO;

	/* GET */
	@Override
	public List<PreinspectionVO> getPreinspectionBlueprint(String user_idx) throws Exception {
		return preinspectionDAO.getPreinspectionBlueprint(user_idx);
	}

	@Override
	public List<PreinspectionPinVO> getPreinspectionPin(String preinspection_idx) throws Exception {
		return preinspectionDAO.getPreinspectionPin(preinspection_idx);
	}

	@Override
	public List<PreinspectionPinVO> getPreinspectionModal(String pin_idx) throws Exception {
		return preinspectionDAO.getPreinspectionModal(pin_idx);
	}

	/* POST */
	@Override
	public void addPreinspectionBlueprint(String preinspection_date, String preinspection_picture_path, String preinspection_width, String preinspection_height, String user_idx) throws Exception {
		preinspectionDAO.addPreinspectionBlueprint(preinspection_date, preinspection_picture_path, preinspection_width, preinspection_height, user_idx);
	}

	@Override
	public void addPreinspectionModal(String preinspection_idx, String pin_picture_path, String pin_type, String pin_content, String pin_X, String pin_Y) throws Exception {
		preinspectionDAO.addPreinspectionModal(preinspection_idx, pin_picture_path, pin_type, pin_content, pin_X, pin_Y);
	}
}
