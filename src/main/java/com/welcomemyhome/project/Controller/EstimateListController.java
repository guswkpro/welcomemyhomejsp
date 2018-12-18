package com.welcomemyhome.project.Controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.welcomemyhome.project.Service.EstimateService;
import com.welcomemyhome.project.VO.EstimateVO;

@Controller
public class EstimateListController {
	private static final Logger logger = LoggerFactory.getLogger(EstimateListController.class);

	@Inject
	private EstimateService service;
	
	@RequestMapping(value = "/estimatelist", method = RequestMethod.GET)
	public String EstimateList(Locale locale, Model model, @RequestParam int offset, HttpSession session ) throws Exception {

		logger.info("EstimateList");

//		String user_idx = session.getAttribute("token").toString().split("/")[0];
//		String user_auth = session.getAttribute("token").toString().split("/")[1];
//		
//		List<EstimateVO> EstimateList;
//		if(user_auth == "1") { // 사업자
		List<EstimateVO> EstimateList = service.getEstimateList(offset);
//		} else if(user_auth == "0") { // 사용자
//			EstimateList = service.getEstimateListForUser(offset, user_idx);
//		}

		
		model.addAttribute("EstimateList", EstimateList);

		return "estimatelist";
	}
}
