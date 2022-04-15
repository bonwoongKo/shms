package com.shms.test.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/test")
public class TestController {
	@GetMapping("test1")
	public ModelAndView showBootstrapPage() {
		ModelAndView mav = new ModelAndView("/test/testjsp");
		
		return mav;
	}
	
	@GetMapping("test2")
	public ModelAndView showBootstrapPage2() {
		ModelAndView mav = new ModelAndView("/test/indextest");
		
		return mav;
	}
}
