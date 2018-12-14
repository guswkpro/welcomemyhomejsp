package com.welcomemyhome.project.DAO;

import java.util.Date;
import java.util.List;

import com.welcomemyhome.project.VO.UserVO;

public interface UserDAO {
	/* GET */
	public List<UserVO> getUserIDAuth(String id) throws Exception;

	public List<UserVO> getUserInformation(String idx) throws Exception;

	public List<UserVO> getIDCheck(String id) throws Exception;

	public List<UserVO> getNickNameCheck(String nickname) throws Exception;

	/* POST */
	public void signup(String id, String pw, String nickname, String date, String subscription, String auth)
			throws Exception;

	/* PUT */
	public void editUserConnectDate(int user_idx, String date) throws Exception;
}