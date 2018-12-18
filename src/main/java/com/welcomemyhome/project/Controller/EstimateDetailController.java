package com.welcomemyhome.project.Controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.welcomemyhome.project.Service.EstimateService;
import com.welcomemyhome.project.VO.EstimateVO;

@Controller
public class EstimateDetailController {
	private static final Logger logger = LoggerFactory.getLogger(EstimateDetailController.class);
	
	@Inject
	private EstimateService estimateDetailService;
	
	@RequestMapping(value = "/estimatedetail", method = RequestMethod.GET)
	public String EstimateDetail(Locale locale, Model model, HttpServletRequest request) throws Exception {
		
		
		List<EstimateVO> EstimateList = estimateDetailService.getEstimateDetail(estimate_idx);

		model.addAttribute("EstimateList", EstimateList);
		
		logger.info("EstimateDetail");

		return "estimatedetail";
	}
}