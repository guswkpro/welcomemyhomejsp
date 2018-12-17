package com.welcomemyhome.project.Service;

import java.util.List;

import com.welcomemyhome.project.VO.PreinspectionVO;

public interface PreinspectionService {
	/* GET */
	public List<PreinspectionVO> getPreinspectionBlueprint(String user_idx) throws Exception;

	public List<PreinspectionVO> getPreinspectionPin(String preinspection_idx) throws Exception;

	public List<PreinspectionVO> getPreinspectionModal(String pin_idx) throws Exception;
	
	/* POST */
	public void addPreinspectionBlueprint(String preinspection_date, String preinspection_picture_path, String preinspection_width, String preinspection_height, String user_idx) throws Exception;

	public void addPreinspectionModal(String preinspection_idx, String pin_picture_path, String pin_type, String pin_content, String pin_X, String pin_Y) throws Exception;
}
