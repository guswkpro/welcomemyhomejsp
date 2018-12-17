package com.welcomemyhome.project.Service;

import java.util.List;

import javax.inject.Inject;

import com.welcomemyhome.project.DAO.PreinspectionDAO;
import com.welcomemyhome.project.VO.PreinspectionVO;

public class PreinspectionServiceImpl implements PreinspectionService {
	@Inject
	private PreinspectionDAO preinspectionDAO;

	/* GET */
	@Override
	public List<PreinspectionVO> getPreinspectionBlueprint(String user_idx) throws Exception {
		return preinspectionDAO.getPreinspectionBlueprint(user_idx);
	}

	@Override
	public List<PreinspectionVO> getPreinspectionPin(String preinspection_idx) throws Exception {
		return preinspectionDAO.getPreinspectionPin(preinspection_idx);
	}

	@Override
	public List<PreinspectionVO> getPreinspectionModal(String pin_idx) throws Exception {
		return preinspectionDAO.getPreinspectionModal(pin_idx);
	}

	/* POST */
	@Override
	public void addPreinspectionBlueprint(String preinspection_date, String preinspection_picture_path, String preinspection_width, String preinspection_height, String user_idx) {
	}

	@Override
	public void addPreinspectionModal(String preinspection_idx, String pin_picture_path, String pin_type, String pin_content, String pin_X, String pin_Y) {
	}

}
