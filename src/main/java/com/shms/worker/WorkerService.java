package com.shms.worker;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface WorkerService {
	public void registManager(Worker worker) throws Exception;
	public List<Worker> managerList(Worker worker) throws Exception;
	public Worker viewManager(Worker worker) throws Exception;
	public void editManager(Worker worker) throws Exception;
	public void deleteManager(Worker worker) throws Exception;
}
