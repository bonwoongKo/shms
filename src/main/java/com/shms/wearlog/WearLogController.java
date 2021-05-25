package com.shms.wearlog;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.shms.worker.WorkerServiceImpl;

@RestController
@RequestMapping("/wearlog")
public class WearLogController {
	@Autowired
	private WearLogServiceImpl wearLogServiceImpl;
	@Autowired
	private WorkerServiceImpl workerServiceImpl;
	
	@GetMapping
	public ModelAndView wearLogList() throws Exception {
		ModelAndView mav = new ModelAndView("wearlog/list");
		mav.addObject("wearLogList", wearLogServiceImpl.wearLogList());
		mav.addObject("workerList", workerServiceImpl.workerList());
		
		return mav;
	}
	
	@GetMapping("/search/{name}/{time}")
	public String searchWearLog(@ModelAttribute WearLog wearLog, Errors errors) {
		return null;
	}
	
	@GetMapping("/{code}")
	public ModelAndView viewWearLog(@ModelAttribute WearLog wearLog) throws Exception {
		ModelAndView mav = new ModelAndView("wearlog/view");
		mav.addObject("wearLog", wearLogServiceImpl.viewWearLog(wearLog));
		
		return mav;
	}
}
