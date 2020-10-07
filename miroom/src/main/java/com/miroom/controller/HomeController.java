package com.miroom.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.miroom.service.CustomUserDetailsService;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {


	@RequestMapping(value="/")
	public String loginPage() throws Exception {
		return "/login/login";
	}

	@RequestMapping(value="/dash/home", method=RequestMethod.GET)
	public String DashMain(Model model) throws Exception {
		return "/dash/home";
	}
	
	@RequestMapping(value="/access_denied_page")
    public String accessDeniedPage() throws Exception {
        return "/login/access_denied_page";
    }

}
