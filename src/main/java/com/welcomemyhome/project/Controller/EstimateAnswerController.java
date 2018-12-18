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
public class EstimateAnswerController {
	@Inject
	private EstimateService estimateService;

	private static final Logger logger = LoggerFactory.getLogger(EstimateAnswerController.class);

	@RequestMapping(value = "/estimateanswer", method = RequestMethod.GET)
	public String EstimateAnswer(Locale locale, Model model) throws Exception {

		logger.info("EstimateAnswer");

		return "estimateanswer";
	}

	@RequestMapping(value = "/addestimateanswer", method = RequestMethod.POST)
	@ResponseBody
	public String addEstimateAnswer(HttpServletRequest request, HttpSession session) throws Exception {
		String user_idx = session.getAttribute("token").toString().split("/")[0];
		String answer_title = request.getParameter("answer_title");
		String answer_content = request.getParameter("answer_content");
		String answer_encoded_image = request.getParameter("answer_encoded_image");
		String estimate_idx = request.getParameter("estimate_idx");
		String answer_picture_path = "";

		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		String answer_date = sdf.format(date).toString();

		File path = new File(".");

		new File(path.getAbsolutePath().substring(0, path.getAbsolutePath().length() - 1) + "welcomemyhomejsp/src/main/webapp/WEB-INF/views/public/" + session.getAttribute("token").toString().split("/")[2] + "/estimateanswer").mkdirs();
		new File(path.getAbsolutePath().substring(0, path.getAbsolutePath().length() - 1) + "welcomemyhomejsp/src/main/webapp/WEB-INF/views/public/" + session.getAttribute("token").toString().split("/")[2] + "/estimateanswer/" + sdf.format(date).toString()).mkdirs();
		for (int i = 0; i < answer_encoded_image.split(",")[1].split("!--!").length; i++) {
			byte[] data = Base64.decodeBase64(answer_encoded_image.split(",")[1].split("!--!")[i].getBytes());
			Path destinationFile = Paths.get(path.getAbsolutePath().substring(0, path.getAbsolutePath().length() - 1) + "welcomemyhomejsp/src/main/webapp/WEB-INF/views/public/" + session.getAttribute("token").toString().split("/")[2] + "/estimateanswer/" + sdf.format(date).toString(), sdf.format(date).toString() + "_" + i + ".jpg");
			Files.write(destinationFile, data);
			answer_picture_path += "./public/" + session.getAttribute("token").toString().split("/")[2] + "/estimateanswer/" + sdf.format(date).toString() + "/" + sdf.format(date).toString() + "_" + i + ".jpg" + ",";
		}

		sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		answer_date = sdf.format(date).toString();

		estimateService.addEstimateAnswer(answer_title, answer_picture_path, answer_content, answer_date, estimate_idx, user_idx);
		return "/estimatelist?offset=0";
	}
}