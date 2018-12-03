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

import com.welcomemyhome.project.Service.MagazineService;
import com.welcomemyhome.project.VO.MagazineVO;

@Controller
public class MagazineController {
	private static final Logger logger = LoggerFactory.getLogger(MagazineController.class);

	@Inject
	private MagazineService service;
	
	@RequestMapping(value = "/magazine", method = RequestMethod.GET)
	public String Magazine(Locale locale, Model model, @RequestParam int offset) throws Exception {

		logger.info("Magazine");

		List<MagazineVO> MagazineList = service.selectMagazine(offset);

		model.addAttribute("MagazineList", MagazineList);

		return "magazine";
	}
}
