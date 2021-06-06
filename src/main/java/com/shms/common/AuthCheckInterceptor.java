package com.shms.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

public class AuthCheckInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession(false);
		String job = session != null ? session.getAttribute("job") != null ? String.valueOf(session.getAttribute("job")) : "" : "";
		
		if (request.getServletPath().split("/").length > 1 && ("A".equals(job) || "M".equals(job))) {
			String path = request.getServletPath().split("/")[1];
			if ("A".equals(job) && ("".equals(path))) {
				response.sendRedirect(request.getContextPath() + "/manager/main");
			} else if ("M".equals(job) 
					&& ("manager".equals(path) 
							|| "hat".equals(path) 
							|| "gateway".equals(path)
							|| "worker".equals(path)
							|| "wearlog".equals(path))) {
				// 안전관리자 GET 방식이면서 폼이 포함되지 않는경우 
				if ("manager".equals(path) 
						&& "GET".equals(request.getMethod()) 
						&& request.getServletPath().indexOf("form") == -1) {
					
					return true;
				}
				// 관리자 수정폼과 수정
				if ("manager".equals(path) 
						&& ((request.getServletPath().indexOf(String.valueOf(session.getAttribute("empNumber"))) > 0 && request.getServletPath().indexOf("search") == -1) 
								|| request.getServletPath().indexOf("check") > 0
								|| "PUT".equals(request.getMethod()))) {
					
					return true;
				}
				
				response.sendRedirect(request.getContextPath() + "/map");
			}
			
			return true;
		} else {
			if ("A".equals(job)) {
				response.sendRedirect(request.getContextPath() + "/manager/main");
			} else if ("M".equals(job)) {
				response.sendRedirect(request.getContextPath() + "/map");
			} else {
				response.sendRedirect(request.getContextPath() + "/common/login/form");
			}
			
			return false;
		}
	}
}
