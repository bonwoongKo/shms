package com.shms.common;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shms.manager.Manager;
import com.shms.manager.ManagerMapper;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	ManagerMapper managerMapper;

	@Override
	public String login(Manager manager, HttpSession httpSession) {
		try {
			manager = managerMapper.select(manager);
			
			if (manager.getJob() == 'A') { // 시스템 관리자
				httpSession.setAttribute("empNumber", manager.getEmpNumber());
				httpSession.setAttribute("job", manager.getJob());
				
				return "/manager/main";
			}
			else if (manager.getJob() == 'M') { // 안전 관리자
				httpSession.setAttribute("empNumber", manager.getEmpNumber());
				httpSession.setAttribute("job", manager.getJob());
				
				return "/map";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
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
			// TODO Auto-generated catch block
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
