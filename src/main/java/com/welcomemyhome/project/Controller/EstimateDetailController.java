package com.welcomemyhome.project.Controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EstimateDetailController {
	private static final Logger logger = LoggerFactory.getLogger(EstimateDetailController.class);
	
	@RequestMapping(value = "/estimatedetail", method = RequestMethod.GET)
	public String EstimateDetail(Locale locale, Model model) throws Exception {

		logger.info("EstimateDetail");

		return "estimatedetail";
	}
}