package com.shms.common;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class CustomErrorController implements ErrorController {
	@GetMapping("/error")
	public ModelAndView handleError(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
		
		if (status != null) {
			int statusCode = Integer.valueOf(status.toString());
			if (statusCode == HttpStatus.NOT_FOUND.value()) {
				System.out.println("goto 404");
				mav.setViewName("common/404");
				return mav;
			} else if (statusCode == HttpStatus.FORBIDDEN.value()) {
				System.out.println("goto 500");
				mav.setViewName("common/500");
				return mav;
			} else {
				System.out.println("goto 404");
				mav.setViewName("common/404");
				return mav;
			}
		}
		
		return mav;
	}
	
	@Override
	public String getErrorPath() {
		return null;
	}
	
}
