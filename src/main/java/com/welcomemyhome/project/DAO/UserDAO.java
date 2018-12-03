package com.welcomemyhome.project.DAO;

import java.util.List;

import com.welcomemyhome.project.VO.UserVO;

public interface UserDAO {

	public List<UserVO> selectUser() throws Exception;
}