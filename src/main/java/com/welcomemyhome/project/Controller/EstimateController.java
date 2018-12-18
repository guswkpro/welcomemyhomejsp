package com.welcomemyhome.project.Controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.binary.Base64;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.welcomemyhome.project.Service.EstimateService;

@Controller
public class EstimateController {
	private static final Logger logger = LoggerFactory.getLogger(EstimateListController.class);

	@Inject
	private EstimateService estimateService;

	@RequestMapping(value = "/estimate", method = RequestMethod.GET)
	public String Estimate(Locale locale, Model model) throws Exception {

		logger.info("Estimate");

		return "estimate";
	}

	@RequestMapping(value = "/addestimate", method = RequestMethod.POST)
	@ResponseBody
	public String addEstimate(HttpServletRequest request, HttpSession session) throws Exception {
		String user_idx = session.getAttribute("token").toString().split("/")[0];
		String estimate_title = request.getParameter("estimate_title");
		String estimate_content = request.getParameter("estimate_content");
		String estimate_address = request.getParameter("estimate_address");
		String estimate_encoded_image = request.getParameter("estimate_encoded_image");
		String estimate_picture_path = "";

		System.out.println(estimate_encoded_image);

		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		String estimate_date = sdf.format(date).toString();

		File path = new File(".");

		new File(path.getAbsolutePath().substring(0, path.getAbsolutePath().length() - 1) + "welcomemyhomejsp/src/main/webapp/WEB-INF/views/public/" + session.getAttribute("token").toString().split("/")[2] + "/estimate").mkdirs();
		new File(path.getAbsolutePath().substring(0, path.getAbsolutePath().length() - 1) + "welcomemyhomejsp/src/main/webapp/WEB-INF/views/public/" + session.getAttribute("token").toString().split("/")[2] + "/estimate/" + sdf.format(date).toString()).mkdirs();
		for (int i = 0; i < estimate_encoded_image.split(",")[1].split("!--!").length; i++) {
			byte[] data = Base64.decodeBase64(estimate_encoded_image.split(",")[1].split("!--!")[i].getBytes());
			Path destinationFile = Paths.get(path.getAbsolutePath().substring(0, path.getAbsolutePath().length() - 1) + "welcomemyhomejsp/src/main/webapp/WEB-INF/views/public/" + session.getAttribute("token").toString().split("/")[2] + "/estimate/" + sdf.format(date).toString(), sdf.format(date).toString() + "_" + i + ".jpg");
			Files.write(destinationFile, data);
			estimate_picture_path += "./public/" + session.getAttribute("token").toString().split("/")[2] + "/estimate/" + sdf.format(date).toString() + "/" + sdf.format(date).toString() + "_" + i + ".jpg" + ",";
		}

		sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		estimate_date = sdf.format(date).toString();

		estimateService.addEstimate(estimate_title, estimate_picture_path, estimate_content, estimate_date, estimate_address, user_idx);
		return "/estimatelist?offset=0";
	}
}