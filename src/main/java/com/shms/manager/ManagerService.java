package com.shms.manager;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface ManagerService {
	public void registManager(Manager manager) throws Exception;
	public List<Manager> managerList() throws Exception;
	public Manager viewManager(Manager manager) throws Exception;
	public void editManager(Manager manager) throws Exception;
	public void deleteManager(Manager manager) throws Exception;
}
