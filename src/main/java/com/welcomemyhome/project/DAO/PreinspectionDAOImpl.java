package com.welcomemyhome.project.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.welcomemyhome.project.VO.PreinspectionPinVO;
import com.welcomemyhome.project.VO.PreinspectionVO;

@Repository
public class PreinspectionDAOImpl implements PreinspectionDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String Namespace = "com.example.mapper.PreinspectionMapper";

	/* GET */
	@Override
	public List<PreinspectionVO> getPreinspectionBlueprint(String user_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("user_idx", user_idx);
		return sqlSession.selectList(Namespace + ".getPreinspectionBlueprint", parameters);
	}

	@Override
	public List<PreinspectionPinVO> getPreinspectionPin(String preinspection_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("preinspection_idx", preinspection_idx);
		return sqlSession.selectList(Namespace + ".getPreinspectionPin", parameters);
	}

	@Override
	public List<PreinspectionPinVO> getPreinspectionModal(String pin_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("pin_idx", pin_idx);
		return sqlSession.selectList(Namespace + ".getPreinspectionModal", parameters);
	}

	/* POST */
	@Override
	public void addPreinspectionBlueprint(String preinspection_date, String preinspection_picture_path, String preinspection_width, String preinspection_height, String user_idx) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("preinspection_date", preinspection_date);
		parameters.put("preinspection_picture_path", preinspection_picture_path);
		parameters.put("preinspection_width", preinspection_width);
		parameters.put("preinspection_height", preinspection_height);
		parameters.put("user_idx", user_idx);
		sqlSession.selectList(Namespace + ".addPreinspectionBlueprint", parameters);
	}

	@Override
	public void addPreinspectionModal(String preinspection_idx, String pin_picture_path, String pin_type, String pin_content, String pin_X, String pin_Y) throws Exception {
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("preinspection_idx", preinspection_idx);
		parameters.put("pin_picture_path", pin_picture_path);
		parameters.put("pin_type", pin_type);
		parameters.put("pin_content", pin_content);
		parameters.put("pin_X", pin_X);
		parameters.put("pin_Y", pin_Y);
		sqlSession.selectList(Namespace + ".addPreinspectionModal", parameters);
	}
}