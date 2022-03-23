package com.shms.wearInfo.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shms.wearInfo.service.WearInfo;
import com.shms.wearInfo.service.impl.WearInfoServiceImpl;

@RestController
@RequestMapping("/common")
public class WearInfoController {
	@Autowired
	WearInfoServiceImpl wearInfoService;
	
	@PostMapping("/receive")
	public void receiveWearInfo(@RequestBody WearInfo info, Errors errors) {
		try {
			if (errors.hasErrors()) {
				new Exception();
			}
			
			wearInfoService.receiveWearInfo(info);	
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
