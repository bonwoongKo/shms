package com.shms.login.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shms.login.service.impl.LoginServiceImpl;
import com.shms.manager.service.Manager;

@RestController
@RequestMapping("/common")
public class LoginController {
	@Autowired
	LoginServiceImpl loginService;
	
	@GetMapping("/login/form")
	public ModelAndView loginForm() {
		System.out.println("test loginForm controller");
		return new ModelAndView("common/loginForm");
	}
	
	@PostMapping("/login")
	public ModelAndView login(Manager manager, HttpSession httpSession) {
		System.out.println("test login controller");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setView(new RedirectView(loginService.login(manager, httpSession)));
		
		return modelAndView;
	}
	
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession httpSession) {
		loginService.logout(httpSession);
		
		return new ModelAndView(new RedirectView("/common/login/form"));
	}
	
	@GetMapping("/check/{empNumber}/{password}")
	public String checkLogin(Manager manager) {
		ObjectMapper mapper = new ObjectMapper();
		String result = "{}";
		try {
			if (loginService.loginCheck(manager) != null) {
				result = mapper.writeValueAsString(manager);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	
		return result;
	}
}
