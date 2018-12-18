package com.welcomemyhome.project.Controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;

import com.welcomemyhome.project.DAO.MagazineDAO;
import com.welcomemyhome.project.Service.MagazineService;
import com.welcomemyhome.project.VO.MagazineVO;

@Controller
public class MagazineController implements ServletContextAware {
	private static final Logger logger = LoggerFactory.getLogger(MagazineController.class);

	@Inject
	private MagazineService service;

	private ServletContext servletContext;

	@RequestMapping(value = "/magazine", method = RequestMethod.GET)
	public String Magazine(Locale locale, Model model, @RequestParam int offset, HttpSession session) throws Exception {

		logger.info("Magazine");

		List<MagazineVO> magazineList;
		System.out.println(session.getAttribute("token"));
		if (session.getAttribute("token") == null) {
			magazineList = service.getMagazineList(offset, "undefined");
		} else {
			magazineList = service.getMagazineList(offset, session.getAttribute("token").toString().split("/")[0]);
		}

		model.addAttribute("MagazineList", magazineList);

		return "magazine";
	}

	@RequestMapping(value = "/magazinedetail", method = RequestMethod.GET)
	public String Magazinedetail(Locale locale, Model model, @RequestParam int magazine_idx, HttpSession session)
			throws Exception {

		logger.info("Magazinedetail");

		String user_idx = session.getAttribute("token").toString().split("/")[0];

		List<MagazineVO> magazineList;
		if (session.getAttribute("token") == null) {
			magazineList = service.getMagazineDetail(user_idx, magazine_idx + "");
		} else {
			magazineList = service.getMagazineDetail(user_idx, magazine_idx + "");
		}

		model.addAttribute("MagazineDetail", magazineList.get(0));
		model.addAttribute("MagazineFirstImage", magazineList.get(0).getMagazine_picture_path().split(",")[0]);
		model.addAttribute("MagazinePaths", magazineList.get(0).getMagazine_picture_path()
				.substring(magazineList.get(0).getMagazine_picture_path().indexOf(",")));
		model.addAttribute("MagazineComments", service.getMagazineComment(magazine_idx + ""));
		return "magazinedetail";
	}

	@RequestMapping(value = "/addmagazinecomment", method = RequestMethod.POST)
	public String Login(HttpServletRequest request, HttpServletResponse response, HttpSession session, @RequestParam String magazine_idx)
			throws Exception {
		String user_idx = session.getAttribute("token").toString().split("/")[0];
		request.setCharacterEncoding("UTF-8");
		
		service.addMagazineComment(new String(request.getParameter("comment_content").getBytes("8859_1"), "UTF-8"), user_idx, magazine_idx);

		return "redirect:/magazinedetail?magazine_idx=" + magazine_idx;
	}

	@Override
	public void setServletContext(ServletContext servletContext) {
		// TODO Auto-generated method stub
		this.servletContext = servletContext;
	}
}
