package com.shms.login.service.impl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shms.login.service.LoginService;
import com.shms.manager.service.Manager;
import com.shms.manager.service.ManagerMapper;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	ManagerMapper managerMapper;

	@Override
	public String login(Manager manager, HttpSession httpSession) {
		try {
			System.out.println("test1");
			manager = managerMapper.select(manager);
			
			if (manager.getJob() == 'A') { // 시스템 관리자
				httpSession.setAttribute("empNumber", manager.getEmpNumber());
				httpSession.setAttribute("job", manager.getJob());
				
				return "/manager/main";
			} else if (manager.getJob() == 'M') { // 안전 관리자
				httpSession.setAttribute("empNumber", manager.getEmpNumber());
				httpSession.setAttribute("job", manager.getJob());
				httpSession.setAttribute("name", manager.getName());
				
				return "/map";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		manager.setJob('F');
		
		return "/common/login/form";
	}
	
	@Override
	public String loginCheck(Manager manager) {
		try {
			if (managerMapper.count(manager) != 0) {
				
				return "OK";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public void logout(HttpSession httpSession) {
		if (httpSession != null) {
			httpSession.invalidate();
		}
	}
}
