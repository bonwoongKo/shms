package com.shms.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.shms.login.service.AuthInfo;

public class AuthCheckInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession(false);
		if (session != null) {
			AuthInfo authInfo = (AuthInfo) session.getAttribute("authInfo");
			if (authInfo != null && isCheckURL(request, authInfo)) {
				return true;
			}
		}
		
		response.sendRedirect(request.getContextPath() + "/portal/login/form");
		return false;
	}
	
	
	public boolean isCheckURL(HttpServletRequest request, AuthInfo authInfo) {
		char job = authInfo.getJob();
		String path = request.getServletPath().split("/")[1];
		
		if (job == 'M' && (path.equals("equipment")
						|| path.equals("worker"))) {
			return false;
		}
		
		return true;
	}
}
