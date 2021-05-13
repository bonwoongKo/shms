package com.shms.wearlog;

import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@RestController
@RequestMapping("/wearlog")
public class WearLogController {
	
	@GetMapping
	public ModelAndView wearLogList() {
		return new ModelAndView("wearlog/list");
	}
	
	@GetMapping("/search/{name}/{time}")
	public String searchWearLog(@ModelAttribute WearLog wearLog, Errors errors) {
		return null;
	}
	
	@GetMapping("/{number}")
	public ModelAndView viewWearLog(@ModelAttribute WearLog wearLog) {
		return new ModelAndView("wearlog/view");
	}
	
	@DeleteMapping("/{number}")
	public ModelAndView deleteWearLog(@ModelAttribute WearLog wearLog, Errors errors) {
		return new ModelAndView(new RedirectView("/wearlog"));
	}
}
