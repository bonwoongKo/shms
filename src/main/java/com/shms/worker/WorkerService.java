package com.shms.worker;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface WorkerService {
	public void registManager(Worker worker);
	public List<Worker> managerList(Worker worker);
	public Worker viewManager(Worker worker);
	public void editManager(Worker worker);
	public void deleteManager(Worker worker);
}
