package com.shms.wearInfo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shms.equipment.service.Equipment;
import com.shms.equipment.service.EquipmentMapper;
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
	EquipmentMapper equipmentMapper;
	
	@Autowired
	WearLogServiceImpl wearLogService;
	
	@Override
	public void receiveWearInfo(WearInfo message) {
		WearLog wearLog = new WearLog();
		
		try {
			if (validWearInfo(message.getCardNum(), message.getHatCode())) {
				Worker worker = new Worker();
				worker.setCardNum(message.getCardNum());
				worker = workerMapper.select(worker);
				
				wearLog.setWorkerNum(worker.getWorkerNum());
				wearLog.setHatCode(message.getHatCode());
				wearLog.setGatewayCode(message.getGatewayCode());
				wearLog.setRecordTime(message.getRecordTime());
				wearLog.setIsWear(message.getIsWear());
				wearLog.setLatitude(message.getLatitude());
				wearLog.setLongitude(message.getLongitude());
				
				wearLogService.registWearLog(wearLog);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public boolean validWearInfo(String cardNum, String equipmentCode) {
		Worker worker = new Worker();
		worker.setCardNum(cardNum);
		
		Equipment equipment = new Equipment();
		equipment.setCode(equipmentCode);
		
		try {
			if (workerMapper.count(worker) != 1) {
				System.out.println("Worker");
				return false;
			}
			
			if (equipmentMapper.count(equipment) != 1) {
				System.out.println("equipment");
				return false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return true;
	}
}