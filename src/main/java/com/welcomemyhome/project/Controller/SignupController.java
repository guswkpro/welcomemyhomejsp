package com.welcomemyhome.project.Controller;

import java.io.File;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

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
	
	@RequestMapping(value = "/idCheck", method = RequestMethod.GET)
	public void idCheck(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		System.out.println("idCheck");
		String id = request.getParameter("user_id");
		String result = service.getIDCheck(id);
		System.out.println(result);
		if(result.equals("1")) {
			// Already exist
			System.out.println("result=1");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('이미 있는 ID입니다.'); </script>");
			out.flush();
		} else if(result.equals("2")) {
			// No exist
			System.out.println("result=2");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('사용가능한 ID입니다.'); </script>");
			out.flush();
		}
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String Signup(HttpServletRequest request, Model model, HttpServletResponse response) throws Exception {
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		String nickname = request.getParameter("user_nickname");
		String subscription = "1";
		String auth = "0";
		service.signup(id, pw, nickname, subscription, auth);
		
		File path = new File(".");
		System.out.println(System.getProperty("user.dir"));
		Path currentRelativePath = Paths.get("");
		String s = currentRelativePath.toAbsolutePath().toString();
		System.out.println("Current relative path is: " + s);
		new File(path.getAbsolutePath().substring(0, path.getAbsolutePath().length() - 1) + "welcomemyhomejsp/src/main/webapp/WEB-INF/views/public/" + nickname).mkdirs();
		System.out.println(path.getAbsolutePath().substring(0, path.getAbsolutePath().length() - 1) + "welcomemyhomejsp/src/main/webapp/WEB-INF/views/public/" + nickname + "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<script>alert('회원가입에 성공하였습니다.');</script>");
		out.flush();
		
		return "home";
	}
	
}