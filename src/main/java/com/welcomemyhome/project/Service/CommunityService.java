package com.welcomemyhome.project.Service;

import java.util.List;

import com.welcomemyhome.project.VO.CommunityVO;

public interface CommunityService {
    
    public List<CommunityVO> selectCommunity(int offset) throws Exception;
}