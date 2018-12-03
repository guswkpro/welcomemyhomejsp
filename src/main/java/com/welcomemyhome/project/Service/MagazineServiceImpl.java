package com.welcomemyhome.project.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.welcomemyhome.project.DAO.MagazineDAO;
import com.welcomemyhome.project.VO.MagazineVO;

@Service
public class MagazineServiceImpl implements MagazineService {
 
    @Inject
    private MagazineDAO dao;
    
    @Override
    public List<MagazineVO> selectMagazine(int offset) throws Exception {
 
        return dao.selectMagazine(offset);
    }
}