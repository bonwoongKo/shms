package com.shms.hat;

import org.springframework.beans.factory.annotation.Autowired;
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
	@Autowired
	private HatServiceImpl hatServiceImpl;
	
	@GetMapping("/form")
	public ModelAndView registHatForm() {
		return new ModelAndView("hat/regist");
	}
	
	@PostMapping
	public ModelAndView registHat(@ModelAttribute Hat hat, Errors erros) {
		return new ModelAndView(new RedirectView("/hat"));
	}
	
	@GetMapping
	public ModelAndView hasList() throws Exception {
		ModelAndView mav = new ModelAndView("hat/list");
		mav.addObject("hatList", hatServiceImpl.hatList());
		
		return mav;
	}
	
	@GetMapping("/{code}")
	public ModelAndView viewHat(@ModelAttribute Hat hat) throws Exception {
		ModelAndView mav = new ModelAndView("hat/view");
		mav.addObject("hat", hatServiceImpl.viewHat(hat));
		
		return mav;
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
