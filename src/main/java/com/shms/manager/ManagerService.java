package com.shms.manager;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface ManagerService {
	public void registManager(Manager manager);
	public List<Manager> managerList(Manager manager);
	public Manager viewManager(Manager manager);
	public void editManager(Manager manager);
	public void deleteManager(Manager manager);
}
