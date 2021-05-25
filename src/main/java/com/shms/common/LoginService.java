package com.shms.common;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.shms.manager.Manager;

@Service
public interface LoginService {
	public String login(Manager manager, HttpSession httpSession);
	public String loginCheck(Manager manager);
	public void logout(HttpSession httSession);
}
