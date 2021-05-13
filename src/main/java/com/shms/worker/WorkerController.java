package com.shms.worker;

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
	
	@GetMapping("/form")
	public ModelAndView registWorkerForm() {
		return new ModelAndView("worker/regist");
	}
	
	@PostMapping
	public ModelAndView registWorker(@ModelAttribute Worker worker, Errors erros) {
		return new ModelAndView(new RedirectView("/worker"));
	}
	
	@GetMapping
	public ModelAndView workerList() {
		return new ModelAndView("worker/list");
	}
	
	@GetMapping("/search/{name}")
	public String searchWorker(@ModelAttribute Worker worker) {
		return null;
	}
	
	@GetMapping("/{number}")
	public ModelAndView viewWorker(@ModelAttribute Worker worker) {
		return new ModelAndView("worker/view");
	}
	
	@GetMapping("/{number}/form")
	public ModelAndView editWorkerForm(@ModelAttribute Worker worker) {
		return new ModelAndView("worker/edit");
	}
	
	@PutMapping
	public ModelAndView editWorker(@ModelAttribute Worker worker, Errors errors) {
		return new ModelAndView(new RedirectView("/worker"));
	}
	
	@DeleteMapping
	public ModelAndView deleteWorker(@ModelAttribute Worker worker) {
		return new ModelAndView(new RedirectView("/worker"));
	}
	
	@GetMapping("/{number}/{time}/map")
	public ModelAndView mapWorker(@ModelAttribute Worker worker) {
		return new ModelAndView("worker/map");
	}
}
