package com.welcomemyhome.project.Controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.welcomemyhome.project.VO.EstimateVO;

@Controller
public class EstimateController {
	private static final Logger logger = LoggerFactory.getLogger(EstimateListController.class);
	
	@RequestMapping(value = "/estimate", method = RequestMethod.GET)
	public String EstimateList(Locale locale, Model model) throws Exception {

		logger.info("Estimate");

		return "estimate";
	}
}