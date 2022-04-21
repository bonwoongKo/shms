package com.shms.wearInfo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shms.wearInfo.service.WearInfo;
import com.shms.wearInfo.service.WearInfoService;
import com.shms.wearlog.service.WearLog;
import com.shms.wearlog.service.impl.WearLogServiceImpl;
import com.shms.worker.service.Worker;
import com.shms.worker.service.WorkerMapper;

@Service
public class WearInfoServiceImpl implements WearInfoService {
	@Autowired
	WorkerMapper workerMapper;
	
	@Autowired
	WearLogServiceImpl wearLogService;
	
	@Override
	public void receiveWearInfo(WearInfo message) {
		WearLog wearLog = new WearLog();
		try {
			Worker worker = new Worker();
			worker = workerMapper.select(worker);
			
			wearLog.setIsWear(message.getIsWear());
			wearLog.setLatitude(message.getLatitude());
			wearLog.setLongitude(message.getLongitude());
			
			wearLogService.registWearLog(wearLog);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}