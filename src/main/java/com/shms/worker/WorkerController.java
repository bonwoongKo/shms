package com.shms.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@RestController
@RequestMapping("/worker")
public class WorkerController {
	@Autowired
	private WorkerServiceImpl workerServiceImpl;
	
	@GetMapping("/form")
	public ModelAndView registWorkerForm() {
		
		return new ModelAndView("worker/regist");
	}
	
	@PostMapping
	public ModelAndView registWorker(@ModelAttribute Worker worker, Errors erros) throws Exception {
		workerServiceImpl.registWorker(worker);
		
		return new ModelAndView(new RedirectView("/worker"));
	}
	
	@GetMapping
	public ModelAndView workerList() throws Exception {
		ModelAndView mav = new ModelAndView("worker/list");
		mav.addObject("workerList", workerServiceImpl.workerList());
		
		return mav;
	}
	
	@GetMapping("/search/{name}")
	public String searchWorker(@ModelAttribute Worker worker) {
		
		return null;
	}
	
	@GetMapping("/{empNumber}")
	public ModelAndView viewWorker(@ModelAttribute Worker worker) throws Exception {
		ModelAndView mav = new ModelAndView("worker/view");
		mav.addObject("worker", workerServiceImpl.viewWorker(worker));
		
		return mav;
	}
	
	@GetMapping("/{empNumber}/form")
	public ModelAndView editWorkerForm(@ModelAttribute Worker worker) throws Exception {
		ModelAndView mav = new ModelAndView("worker/edit");
		mav.addObject("worker", workerServiceImpl.viewWorker(worker));
		
		return mav;
	}
	
	@PutMapping
	public ModelAndView editWorker(@ModelAttribute Worker worker, Errors errors) throws Exception {
		workerServiceImpl.editWorker(worker);
		
		return new ModelAndView(new RedirectView("/worker"));
	}
	
	@DeleteMapping
	public ModelAndView deleteWorker(@ModelAttribute Worker worker) throws Exception {
		workerServiceImpl.editWorker(worker);
		
		return new ModelAndView(new RedirectView("/worker"));
	}
}
