package com.welcomemyhome.project.DAO;

import java.util.List;

import com.welcomemyhome.project.VO.MagazineVO;

public interface MagazineDAO {

	public List<MagazineVO> selectMagazine(int offset) throws Exception;
}