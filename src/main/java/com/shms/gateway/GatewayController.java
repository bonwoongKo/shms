package com.shms.gateway;

import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@RestController
@RequestMapping("/gateway")
public class GatewayController {
	
	@GetMapping("/form")
	public ModelAndView registGatewayForm() {
		return new ModelAndView("gateway/regist");
	}
	
	@PostMapping
	public ModelAndView registGateway(@ModelAttribute Gateway gateway, Errors errors) {
		return new ModelAndView(new RedirectView("/gateway"));
	}
	
	@GetMapping
	public ModelAndView gatewayList() {
		return new ModelAndView("gateway/list");
	}
	
	@GetMapping("/{number}")
	public ModelAndView viewGateway(@ModelAttribute Gateway gateway, Errors errors) {
		return new ModelAndView("gateway/view");
	}
	
	@PutMapping
	public ModelAndView editGateway(@ModelAttribute Gateway gateway) {
		return new ModelAndView(new RedirectView("/gateway"));
	}
	
	@DeleteMapping
	public ModelAndView deleteGateway(@ModelAttribute Gateway gateway, Errors errors) {
		return new ModelAndView(new RedirectView("gateway"));
	}
}
