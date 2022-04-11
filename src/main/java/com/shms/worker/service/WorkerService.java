package com.shms.worker.service;

import java.util.List;

public interface WorkerService {
	public void registWorker(Worker worker) throws Exception;
	public List<Worker> workerList() throws Exception;
	public Worker viewWorker(Worker worker) throws Exception;
	public void editWorker(Worker worker) throws Exception;
	public void deleteWorker(Worker worker) throws Exception;
}
