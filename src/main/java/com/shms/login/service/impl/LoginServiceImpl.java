package com.shms.login.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shms.login.WrongIdPasswordException;
import com.shms.login.service.AuthInfo;
import com.shms.login.service.LoginCommand;
import com.shms.login.service.LoginService;
import com.shms.manager.service.Manager;
import com.shms.manager.service.ManagerMapper;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	ManagerMapper managerMapper;

	@Override
	public AuthInfo login(LoginCommand loginCommand) throws WrongIdPasswordException {
		Manager manager = managerMapper.selectByEmpNum(loginCommand.getEmpNum());
		
		if (manager == null) {
			throw new WrongIdPasswordException();
		}
		if (!manager.matchPassword(loginCommand.getPassword())) {
			throw new WrongIdPasswordException();
		}
		
		return new AuthInfo(manager.getEmpNum(), manager.getName(), manager.getJob());
	}
}
