package com.shms.login.service;

import org.springframework.stereotype.Service;

@Service
public interface LoginService {
	public AuthInfo login(LoginCommand loginCommand) throws Exception;
}
