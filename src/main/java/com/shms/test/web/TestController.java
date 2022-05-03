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
	
	@GetMapping("test3")
	public ModelAndView showBootstrapPage3() {
		ModelAndView mav = new ModelAndView("/equipment/equipmentList");
		
		return mav;
	}
	
	@GetMapping("test4")
	public ModelAndView showBootstrapPage4() {
		ModelAndView mav = new ModelAndView("/manager/managerList");
		
		return mav;
	}
	
	@GetMapping("test5")
	public ModelAndView showBootstrapPage5() {
		ModelAndView mav = new ModelAndView("/wearlog/wearlogList");
		
		return mav;
	}
}

