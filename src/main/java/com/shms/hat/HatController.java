package com.shms.hat;

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
@RequestMapping("/hat")
public class HatController {
	
	@GetMapping("/form")
	public ModelAndView registHatForm() {
		return new ModelAndView("hat/regist");
	}
	
	@PostMapping
	public ModelAndView registHat(@ModelAttribute Hat hat, Errors erros) {
		return new ModelAndView(new RedirectView("/hat"));
	}
	
	@GetMapping
	public ModelAndView hasList() {
		return new ModelAndView("hat/list");
	}
	
	@GetMapping("/{number}")
	public ModelAndView viewHat() {
		return new ModelAndView("hat/view");
	}
	
	@PutMapping
	public ModelAndView editHat(@ModelAttribute Hat hat, Errors errors) {
		return new ModelAndView(new RedirectView("/hat"));
	}
	
	@DeleteMapping
	public ModelAndView deleteHat(@ModelAttribute Hat hat) {
		return new ModelAndView(new RedirectView("/hat"));
	}
}
