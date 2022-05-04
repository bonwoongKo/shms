package com.shms.manager.service;

import java.util.List;

public interface ManagerService {
	public int registManager(Manager manager) throws Exception;
	public List<Manager> managerList() throws Exception;
	public Manager viewManager(Manager manager) throws Exception;
	public int editManager(Manager manager) throws Exception;
	public int deleteManager(Manager manager) throws Exception;
	public int resetPw(Manager manager) throws Exception;
	public int countManager(Manager manager) throws Exception;
}
