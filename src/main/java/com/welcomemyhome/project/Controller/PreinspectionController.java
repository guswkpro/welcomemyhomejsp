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

import com.welcomemyhome.project.Service.PreinspectionService;

@Controller
public class PreinspectionController {
	@Inject
	PreinspectionService preinspectionService;

	private static final Logger logger = LoggerFactory.getLogger(PreinspectionController.class);

	@RequestMapping(value = "/preinspection", method = RequestMethod.GET)
	public String Preinspection(Locale locale, Model model) throws Exception {

		logger.info("Preinspection");

		return "preinspection";
	}

	@RequestMapping(value = "/addpreinspectionblueprint", method = RequestMethod.POST)
	@ResponseBody
	public String addEstimateAnswer(HttpServletRequest request, HttpSession session) throws Exception {
		String user_nickname = session.getAttribute("token").toString().split("/")[2];
		String preinspection_idx = request.getParameter("preinspection_idx");
		String pin_X = request.getParameter("pin_X");
		String pin_Y = request.getParameter("pin_Y");
		String pin_type = request.getParameter("pin_type");
		String pin_content = request.getParameter("pin_content");
		String pin_encoded_image = request.getParameter("preinspection_encoded_imgae");
		String pin_picture_path = "";

		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");

		File path = new File(".");

		new File(path.getAbsolutePath().substring(0, path.getAbsolutePath().length() - 1) + "welcomemyhomejsp/src/main/webapp/WEB-INF/views/public/" + user_nickname + "/blueprint").mkdirs();
		new File(path.getAbsolutePath().substring(0, path.getAbsolutePath().length() - 1) + "welcomemyhomejsp/src/main/webapp/WEB-INF/views/public/" + user_nickname + "/blueprint/" + sdf.format(date).toString()).mkdirs();
		for (int i = 0; i < pin_encoded_image.split(",").length; i++) {
			byte[] data = Base64.decodeBase64(pin_encoded_image.split(",")[i].getBytes());
			Path destinationFile = Paths.get(path.getAbsolutePath().substring(0, path.getAbsolutePath().length() - 1) + "welcomemyhomejsp/src/main/webapp/WEB-INF/views/public/" + user_nickname + "/blueprint/" + sdf.format(date).toString(), sdf.format(date).toString() + "_" + i + ".jpg");
			Files.write(destinationFile, data);
			pin_picture_path += "./public/" + user_nickname + "/blueprint/" + sdf.format(date).toString() + "/" + sdf.format(date).toString() + "_" + i + ".jpg";
		}

		preinspectionService.addPreinspectionModal(preinspection_idx, pin_picture_path, pin_type, pin_content, pin_X, pin_Y);
		return "이건 니네가 해야대";
	}
}
