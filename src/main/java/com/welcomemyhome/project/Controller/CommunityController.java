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

import com.welcomemyhome.project.Service.CommunityService;
import com.welcomemyhome.project.VO.CommunityVO;

@Controller
public class CommunityController {
	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);

	@Inject
	private CommunityService service;
	
	@RequestMapping(value = "/community", method = RequestMethod.GET)
	public String community(Locale locale, Model model, @RequestParam int offset) throws Exception {

		logger.info("community");

		List<CommunityVO> CommunityList = service.selectCommunity(offset);

		model.addAttribute("CommunityList", CommunityList);

		return "community";
	}
}
