package com.welcomemyhome.project.Controller;

import java.io.PrintWriter;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.welcomemyhome.project.Service.UserService;

@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Inject
	private UserService service;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String Login(Locale locale, Model model) throws Exception {

		logger.info("Login");

		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public void Login(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		String result = service.login(request.getParameter("user_id"), request.getParameter("user_pw"));
		if(result.equals("2")) {
			// NO ID
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('로그인에 실패하였습니다.'); history.go(-1);</script>");
			out.flush();
		} else if(result.equals("3")) {
			// WRONG PW
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('로그인에 실패하였습니다.'); history.go(-1);</script>");
			out.flush();
		} else if(result.equals("4")) {
			// 탈퇴
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('로그인에 실패하였습니다.'); history.go(-1);</script>");
			out.flush();
		} else {
			session.setAttribute("token", service.login(request.getParameter("user_id"), request.getParameter("user_pw")));
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('로그인에 성공하였습니다.'); location.href='/';</script>");
			out.flush();
		}
	}
}