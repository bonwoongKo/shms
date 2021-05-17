package com.shms.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManagerServiceImpl implements ManagerService {
	@Autowired
	private ManagerMapper managerMapper;
	
	@Override
	public void registManager(Manager manager) throws Exception {
		managerMapper.insert(manager);
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
	public void editManager(Manager manager) throws Exception {
		managerMapper.update(manager);
	}

	@Override
	public void deleteManager(Manager manager) throws Exception {
		managerMapper.delete(manager);
	}

}
