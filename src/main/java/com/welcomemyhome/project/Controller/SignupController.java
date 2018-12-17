package com.welcomemyhome.project.Controller;

import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.welcomemyhome.project.Service.UserService;
import com.welcomemyhome.project.VO.UserVO;

@Controller
public class SignupController {
	private static final Logger logger = LoggerFactory.getLogger(SignupController.class);

	@Inject
	private UserService service;
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String Signup(Locale locale, Model model) throws Exception {

		logger.info("Signup");

		return "signup";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String Signup(HttpServletRequest request, Model model) throws Exception {
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		String nickname = request.getParameter("user_nickname");
		String subscription = "1";
		String auth = "0";
		service.signup(id, pw, nickname, subscription, auth);
		
		return "home";
	}
}