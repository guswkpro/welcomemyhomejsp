package com.welcomemyhome.project.Controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EstimateAnswerController {
	private static final Logger logger = LoggerFactory.getLogger(EstimateAnswerController.class);
	
	@RequestMapping(value = "/estimateanswer", method = RequestMethod.GET)
	public String Preinspection(Locale locale, Model model) throws Exception {

		logger.info("EstimateAnswer");

		return "estimateanswer";
	}
}