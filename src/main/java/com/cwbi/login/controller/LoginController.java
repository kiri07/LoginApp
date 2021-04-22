package com.cwbi.login.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.cwbi.login.model.bl.UserBL;
import com.cwbi.login.model.bl.UserRepository;
import com.cwbi.login.model.entities.Registereduser;
import com.cwbi.login.model.entities.User;

@Controller
public class LoginController {
	
	@Autowired
	UserBL bl;
	
	@Autowired
	UserRepository urepo;
	
	@GetMapping({"/","/login"})
	public String loginPage(HttpServletRequest request, Model model) {
		if (request.getSession().getAttribute("user") != null)
			return "redirect:/welcome";
		return "login";
	}
	
	@GetMapping("/welcome")
	public String welcomePage(HttpServletRequest request, Model model) {
		if (request.getSession().getAttribute("user") != null)
			return "welcome";
		return "redirect:/login";
	}
	
	@PostMapping("/check")
	public String checkLogin(Model model, HttpServletRequest request)
	{
		try
		{
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			Registereduser user = urepo.findByUsernameAndUserpassword(name, password);
			if (user != null) {
				request.getSession().setAttribute("user", user);
				return "redirect:/welcome";
			}
			else {
				return "redirect:/login";
			}
		}
		catch (Exception e)
		{
			return "redirect:/login";
		}
	}
	
	@PostMapping("/logout")
	public String checkLogout(HttpServletRequest request)
	{
		if (request.getSession().getAttribute("user") != null)
		{
			request.getSession().setAttribute("user", null);
			return "redirect:/login";
		}
		return "redirect:/login";
	}
	
}
