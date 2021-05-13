package com.shms.common;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.shms.manager.Manager;

@RestController
public class LoginController {
	
	@GetMapping("/login/form")
	public ModelAndView loginForm() {
		return new ModelAndView("common/loginForm");
	}
	
	@PostMapping("/login")
	public ModelAndView login(@ModelAttribute Manager manager) {
		ModelAndView modelAndView = new ModelAndView();
		
		return modelAndView;
	}
	
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession httpSession) {
		return new ModelAndView(new RedirectView("/login/form"));
	}
}
