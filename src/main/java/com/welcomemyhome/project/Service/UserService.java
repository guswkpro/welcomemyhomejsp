package com.welcomemyhome.project.Service;

import java.util.List;

import com.welcomemyhome.project.VO.UserVO;

public interface UserService {
    
    public List<UserVO> selectUser() throws Exception;
}