package com.shms.common;

import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/receive")
public class WearInfoController {
	
	@PostMapping
	public void receiveWearInfo(WearInfo message, Errors errors) {
		
	}
}
