package com.welcomemyhome.project.Controller;

import java.io.PrintWriter;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 * Handles requests for the application home page.
 *//*
	 * @Controller public class HomeController {
	 * 
	 * @RequestMapping(value = "/", method = RequestMethod.GET) public String
	 * home(Locale locale, Model model) { return "home"; }
	 * 
	 * }
	 */

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletResponse response, HttpSession session) throws Exception {
		String user_idx = session.getAttribute("token").toString().split("/")[0];
		if ((user_idx.isEmpty())) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('로그인에 실패하였습니다.'); history.go(-1);</script>");
			out.flush();
		}
		logger.info("home");
		return "home";
	}

}
