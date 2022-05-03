package com.shms.manager.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shms.manager.service.Manager;
import com.shms.manager.service.ManagerMapper;
import com.shms.manager.service.ManagerService;

@Service
public class ManagerServiceImpl implements ManagerService {
	@Autowired
	private ManagerMapper managerMapper;
	
	@Override
	public int registManager(Manager manager) throws Exception {
		manager.setPassword("shms@123");
		return managerMapper.insert(manager);
	}

	@Override
	public List<Manager> managerList() throws Exception {
		
		return managerMapper.list();
	}

	@Override
	public Manager viewManager(Manager manager) throws Exception {
		
		return managerMapper.select(manager);
	}

	@Override
	public int editManager(Manager manager) throws Exception {
		return managerMapper.update(manager);
	}

	@Override
	public int deleteManager(Manager manager) throws Exception {
		return managerMapper.delete(manager);
	}

	@Override
	public int resetPw(Manager manager) throws Exception {
		manager.setPassword("shms@123");
		return managerMapper.resetPw(manager);
	}

	@Override
	public int countManager(Manager manager) throws Exception {
		return managerMapper.count(manager);
	}

}
