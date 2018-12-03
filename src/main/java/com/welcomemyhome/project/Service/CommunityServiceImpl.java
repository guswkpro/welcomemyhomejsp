package com.welcomemyhome.project.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.welcomemyhome.project.DAO.CommunityDAO;
import com.welcomemyhome.project.VO.CommunityVO;

@Service
public class CommunityServiceImpl implements CommunityService {
 
    @Inject
    private CommunityDAO dao;
    
    @Override
    public List<CommunityVO> selectCommunity(int offset) throws Exception {
 
        return dao.selectCommunity(offset);
    }
}