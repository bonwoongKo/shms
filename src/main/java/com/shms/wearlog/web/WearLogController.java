package com.shms.wearlog.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shms.wearlog.service.WearLog;
import com.shms.wearlog.service.impl.WearLogServiceImpl;

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
	
	@GetMapping("/search/{name}")
	public String searchWearLog(@PathVariable  String name) throws Exception {
		ObjectMapper mapper = new ObjectMapper();
		
		return mapper.writeValueAsString(wearLogServiceImpl.searchWearLog(name));
	}
}
