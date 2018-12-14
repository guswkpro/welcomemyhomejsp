package com.welcomemyhome.project.Controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.welcomemyhome.project.VO.UserVO;

@Controller
public class SignupController {
	private static final Logger logger = LoggerFactory.getLogger(SignupController.class);

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String Signup(Locale locale, Model model) throws Exception {

		logger.info("Signup");

		return "signup";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	@ResponseBody
	public String Signup(@RequestBody UserVO userVO) throws Exception {

		return "asdf";
	}
}