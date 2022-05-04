package com.shms.map.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shms.map.service.impl.MapServiceImpl;
import com.shms.wearlog.service.WearLog;

@RestController
@RequestMapping("/map")
public class MapController {
	@Autowired
	private MapServiceImpl mapService;
	
	@GetMapping 
	public ModelAndView Monitoring() {
		ModelAndView mav = new ModelAndView("map/monitoring");
	
		return mav;
	}
	
	@GetMapping("/monitoring")
	public String monitoring() {
		List<WearLog> rows = null;
		String result = null;
		try {
			ObjectMapper mapper = new ObjectMapper();
			rows = mapService.monitoring();
			if (rows != null) {
				result = mapper.writeValueAsString(rows);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
