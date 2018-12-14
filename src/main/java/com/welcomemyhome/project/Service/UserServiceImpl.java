package com.welcomemyhome.project.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.welcomemyhome.project.DAO.UserDAO;
import com.welcomemyhome.project.VO.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO dao;

	/* GET */
	public List<UserVO> getUserInformation(String idx) throws Exception{
		return dao.getUserIDAuth(idx);
	}

	public String getIDCheck(String id) throws Exception{
		List<UserVO> userList = dao.getUserIDAuth(id);
		
		if(userList.size() != 0) {
			return "1"; // Already
		} else {
			return "2";
		}
	}

	public String getNickNameCheck(String nickname) throws Exception{
		List<UserVO> userList = dao.getUserIDAuth(nickname);
		
		if(userList.size() != 0) {
			return "1"; // Already
		} else {
			return "2";
		}
	}

	/* POST */
	@Override
	public String login(String id, String pw) throws Exception {
		List<UserVO> userList = dao.getUserIDAuth(id);
		if (userList.size() != 0) {
			if (userList.get(0).getUser_subscription() == 0) {
				return "4"; // LEAVE
			} else {
				if (userList.get(0).getUser_pw().equals(pw)) {
					Date date = new Date();
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

					dao.editUserConnectDate(userList.get(0).getUser_idx(), sdf.format(date).toString());

					return userList.get(0).getUser_idx() + "/" + userList.get(0).getUser_auth(); // SUCCESS
				} else {
					return "3"; // WRONG PW
				}
			}
		} else {
			return "2"; // NO ID
		}
	}

	@Override
	public void signup(String id, String pw, String nickname, String subscription, String auth) throws Exception {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		dao.signup(id, pw, nickname, sdf.format(date).toString(), subscription, auth);
	}

}