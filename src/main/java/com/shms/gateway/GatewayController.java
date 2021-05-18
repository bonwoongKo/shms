package com.shms.gateway;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@RestController
@RequestMapping("/gateway")
public class GatewayController {
	@Autowired
	private GatewayServiceImpl gatewayServiceImpl;
	
	@GetMapping("/form")
	public ModelAndView registGatewayForm() {
		return new ModelAndView("gateway/regist");
	}
	
	@PostMapping
	public ModelAndView registGateway(@ModelAttribute Gateway gateway, Errors errors) throws Exception {
		gatewayServiceImpl.registGateway(gateway);
		
		return new ModelAndView(new RedirectView("/gateway"));
	}
	
	@GetMapping
	public ModelAndView gatewayList(@ModelAttribute Gateway gateway) throws Exception {
		ModelAndView mav = new ModelAndView("gateway/list");
		mav.addObject("gatewayList",gatewayServiceImpl.gatewayList());
		
		return mav;
	}
	
	@DeleteMapping
	public ModelAndView deleteGateway(@ModelAttribute Gateway gateway, Errors errors) throws Exception {
		gatewayServiceImpl.editGateway(gateway);
		
		return new ModelAndView(new RedirectView("gateway"));
	}
}
