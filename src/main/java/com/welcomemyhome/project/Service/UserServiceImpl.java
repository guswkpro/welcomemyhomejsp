package com.welcomemyhome.project.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.welcomemyhome.project.DAO.UserDAO;
import com.welcomemyhome.project.VO.UserVO;

@Service
public class UserServiceImpl implements UserService {
 
    @Inject
    private UserDAO dao;
    
    @Override
    public List<UserVO> selectUser(String id) throws Exception {
 
        return dao.selectUser(id);
    }
}