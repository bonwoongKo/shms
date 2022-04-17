package com.shms.login.web;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.shms.login.WrongIdPasswordException;
import com.shms.login.service.AuthInfo;
import com.shms.login.service.LoginCommand;
import com.shms.login.service.LoginCommandValidator;
import com.shms.login.service.impl.LoginServiceImpl;

@RestController
@RequestMapping("/portal")
public class LoginController {
	@Autowired
	LoginServiceImpl loginService;
	
	@GetMapping("/login/form")
	public ModelAndView loginForm() {
		return new ModelAndView("common/loginForm");
	}
	
	@PostMapping("/login")
	public ModelAndView login(@Valid LoginCommand loginCommand, Errors errors, HttpSession session) {
		new LoginCommandValidator().validate(loginCommand, errors);
		
		if (errors.hasErrors()) {
			return new ModelAndView("common/loginForm");
		}
		
		try {
			AuthInfo authInfo = loginService.login(loginCommand);
			
			session.setAttribute("authInfo", authInfo);
			return new ModelAndView(new RedirectView("/shms/map"));
		} catch (WrongIdPasswordException e) {
			errors.reject("idPasswordNotMatching");
			
			return new ModelAndView("common/loginForm");
		}
	}
	
	@DeleteMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		
		return new ModelAndView(new RedirectView("/portal/login/form"));
	}
}
