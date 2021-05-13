package com.shms.manager;

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
@RequestMapping("/manager")
public class ManagerController {
	
	@GetMapping("/main")
	public ModelAndView managerMain() {
		return new ModelAndView("manager/main");
	}
	
	@GetMapping("/form")
	public ModelAndView registManagerForm() {
		return new ModelAndView("manager/regist");
	}
	
	@PostMapping
	public ModelAndView registManager(@ModelAttribute Manager manager, Errors errors) {
		return new ModelAndView(new RedirectView("/manager"));
	}
	
	@GetMapping
	public ModelAndView managerList() {
		return new ModelAndView("manager/list");
	}
	
	@GetMapping("/search/{name}")
	public String searchManager(@ModelAttribute Manager manager) {
		return null;
	}
	
	@GetMapping("/{number}")
	public ModelAndView viewManager(@ModelAttribute Manager manager) {
		return new ModelAndView("manager/view");
	}
	
	@GetMapping("/{number}/form")
	public ModelAndView editManagerForm(@ModelAttribute Manager manager) {
		return new ModelAndView("manager/edit");
	}
	
	@PutMapping
	public ModelAndView editManager(@ModelAttribute Manager manager, Errors erros) {
		return new ModelAndView(new RedirectView("/manager"));
	}
	
	@DeleteMapping
	public ModelAndView deleteManager(@ModelAttribute Manager manager) {
		return new ModelAndView(new RedirectView("/manager"));
	}
}
