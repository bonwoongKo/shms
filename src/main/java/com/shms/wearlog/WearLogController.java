package com.shms.wearlog;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/wearlog")
public class WearLogController {
	@Autowired
	private WearLogServiceImpl wearLogServiceImpl;
	
	@GetMapping
	public ModelAndView wearLogList() throws Exception {
		ModelAndView mav = new ModelAndView("wearlog/list");
		mav.addObject("rows", wearLogServiceImpl.wearLogList());
		
		return mav;
	}
	
	@GetMapping("/{empNumber}/{time}")
	public ModelAndView viewWearLog(@ModelAttribute WearLog wearLog) throws Exception {
		ModelAndView mav = new ModelAndView("map/personal");
		mav.addObject("rows", wearLogServiceImpl.viewWearLog(wearLog));
		
		return mav;
	}
	
	@GetMapping("/search/{name}/{time}")
	public String searchWearLog(@ModelAttribute WearLog wearLog, Errors errors) {
		return null;
	}
}
