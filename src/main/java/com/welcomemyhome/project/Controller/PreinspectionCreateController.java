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
public class PreinspectionCreateController {
	@Inject
	PreinspectionService preinspectionService;

	private static final Logger logger = LoggerFactory.getLogger(PreinspectionCreateController.class);

	@RequestMapping(value = "/preinspectioncreate", method = RequestMethod.GET)
	public String PreinspectionCreate(Locale locale, Model model) throws Exception {

		logger.info("PreinspectionCreate");

		return "preinspectioncreate";
	}

	@RequestMapping(value = "/addpreinspectionblueprint", method = RequestMethod.POST)
	@ResponseBody
	public String addEstimateAnswer(HttpServletRequest request, HttpSession session) throws Exception {
		String user_idx = session.getAttribute("token").toString().split("/")[0];
		String user_nickname = session.getAttribute("token").toString().split("/")[2];
		String preinspection_width = request.getParameter("preinspection_width");
		String preinspection_height = request.getParameter("preinspection_hegiht");
		String preinspection_encoded_image = request.getParameter("preinspection_encoded_imgae");
		String preinspection_picture_path = "";

		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		String preinspection_date = sdf.format(date).toString();

		File path = new File(".");

		new File(path.getAbsolutePath().substring(0, path.getAbsolutePath().length() - 1) + "welcomemyhomejsp/src/main/webapp/WEB-INF/views/public/" + user_nickname + "/blueprint").mkdirs();
		new File(path.getAbsolutePath().substring(0, path.getAbsolutePath().length() - 1) + "welcomemyhomejsp/src/main/webapp/WEB-INF/views/public/" + user_nickname + "/blueprint/" + sdf.format(date).toString()).mkdirs();
		for (int i = 0; i < preinspection_encoded_image.split(",").length; i++) {
			byte[] data = Base64.decodeBase64(preinspection_encoded_image.split(",")[i].getBytes());
			Path destinationFile = Paths.get(path.getAbsolutePath().substring(0, path.getAbsolutePath().length() - 1) + "welcomemyhomejsp/src/main/webapp/WEB-INF/views/public/" + user_nickname + "/blueprint/" + sdf.format(date).toString(), user_nickname + ".jpg");
			Files.write(destinationFile, data);
			preinspection_picture_path += "./public/" + user_nickname + "/blueprint/" + sdf.format(date).toString() + "/" + user_nickname + ".jpg,";
		}

		sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		preinspection_date = sdf.format(date).toString();

		preinspectionService.addPreinspectionBlueprint(preinspection_date, preinspection_picture_path, preinspection_width, preinspection_height, user_idx);
		return "이건 니네가 해야대";
	}
}