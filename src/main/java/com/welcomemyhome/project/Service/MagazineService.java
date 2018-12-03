package com.welcomemyhome.project.Service;

import java.util.List;

import com.welcomemyhome.project.VO.MagazineVO;

public interface MagazineService {
    
    public List<MagazineVO> selectMagazine(int offset) throws Exception;
}