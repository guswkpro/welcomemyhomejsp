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

/**
 * Handles requests for the application home page.
 */
@Controller
public class EstimateListController {
	@RequestMapping(value = "/estimatelist", method = RequestMethod.GET)
	public String estimatelist(Locale locale, Model model) {
		return "estimatelist";
	}

}
