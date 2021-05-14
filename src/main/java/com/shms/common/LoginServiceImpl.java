package com.shms.common;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.shms.manager.Manager;

@Service
public class LoginServiceImpl implements LoginService {

	@Override
	public String login(Manager manager, HttpSession httpSession) {
		return null;
	}

	@Override
	public void logout(HttpSession httSession) {
		
	}

}
