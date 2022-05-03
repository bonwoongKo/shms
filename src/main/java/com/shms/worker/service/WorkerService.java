package com.shms.worker.service;

import java.util.List;

public interface WorkerService {
	public int registWorker(Worker worker) throws Exception;
	public List<Worker> workerList() throws Exception;
	public Worker viewWorker(Worker worker) throws Exception;
	public int editWorker(Worker worker) throws Exception;
	public int deleteWorker(Worker worker) throws Exception;
	public int countWorker(Worker worker) throws Exception;
}
