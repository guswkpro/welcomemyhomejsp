package com.welcomemyhome.project.Service;

import java.util.List;

import com.welcomemyhome.project.VO.UserVO;

public interface UserService {
	/* GET */
	public List<UserVO> getUserInformation(String idx) throws Exception;

	public String getIDCheck(String id) throws Exception;

	public String getNickNameCheck(String nickname) throws Exception;
	
	/* POST */
	public String login(String id, String pw) throws Exception;
	
    public void signup(String id, String pw, String nickname, String subscription, String auth) throws Exception;
  
}