package com.shms.worker;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WorkerServiceImpl implements WorkerService {
	@Autowired
	private WorkerMapper workerMapper;
	
	@Override
	public void registWorker(Worker worker) throws Exception {
		workerMapper.insert(worker);
	}

	@Override
	public List<Worker> workerList() throws Exception {
		
		return workerMapper.list();
	}

	@Override
	public Worker viewWorker(Worker worker) throws Exception {
		
		return workerMapper.select(worker);
	}

	@Override
	public void editWorker(Worker worker) throws Exception {
		workerMapper.update(worker);
	}

	@Override
	public void deleteWorker(Worker worker) throws Exception {
		workerMapper.delete(worker);
	}

}
