package com.welcomemyhome.project;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.JsonParser;
import com.welcomemyhome.project.DAO.UserDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MagazineDetailController {
	@RequestMapping(value = "/magazinedetail", method = RequestMethod.GET)
	public String magazinedetail(Locale locale, Model model) {
		return "magazinedetail";
	}

}
