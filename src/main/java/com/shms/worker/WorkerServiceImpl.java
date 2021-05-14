package com.shms.worker;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WorkerServiceImpl implements WorkerService {
	@Autowired
	private WorkerMapper workerMapper;
	
	@Override
	public void registManager(Worker worker) throws Exception {
		workerMapper.insert(worker);
	}

	@Override
	public List<Worker> managerList(Worker worker) throws Exception {
		return workerMapper.list(worker);
	}

	@Override
	public Worker viewManager(Worker worker) throws Exception {
		return workerMapper.select(worker);
	}

	@Override
	public void editManager(Worker worker) throws Exception {
		workerMapper.update(worker);
	}

	@Override
	public void deleteManager(Worker worker) throws Exception {
		workerMapper.delete(worker);
	}

}
