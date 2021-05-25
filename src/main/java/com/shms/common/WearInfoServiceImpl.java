package com.shms.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shms.gateway.Gateway;
import com.shms.gateway.GatewayMapper;
import com.shms.hat.Hat;
import com.shms.hat.HatMapper;
import com.shms.wearlog.WearLog;
import com.shms.wearlog.WearLogServiceImpl;
import com.shms.worker.Worker;
import com.shms.worker.WorkerMapper;

@Service
public class WearInfoServiceImpl implements WearInfoService {

	@Autowired
	WorkerMapper workerMapper;
	
	@Autowired
	HatMapper hatMapper;
	
	@Autowired
	GatewayMapper gatewayMapper;
	
	@Autowired
	WearLogServiceImpl wearLogService;
	
	
	@Override
	public void receiveWearInfo(WearInfo message) {
		WearLog wearLog = new WearLog();
		
		System.out.println("can't take my eye off you");
		
		try {
			if (validWearInfo(message)) {
				Worker worker = new Worker();
				worker.setcardNumber(message.getCardNumber());
				worker = workerMapper.select(worker);
				
				wearLog.setEmpNumber(worker.getEmpNumber());
				wearLog.setGatewayCode(message.getGatewayCode());
				wearLog.setHatCode(message.getSafeHatCode());
				wearLog.setIsWear(message.getIsWear());
				wearLog.setLatitude(message.getLatitude());
				wearLog.setLongitude(message.getLongitude());
				wearLog.setTime(message.getTime());
				
				System.out.println("wear log toString() : " + wearLog.toString());
				
				wearLogService.registWearLog(wearLog);
			}
		} catch (Exception e) {
			
		}
	}

	@Override
	public boolean validWearInfo(WearInfo message) {
		System.out.println("valid wear info Start");
		
		Worker worker = new Worker();
		worker.setcardNumber(message.getCardNumber());
		
		Hat hat = new Hat();
		hat.setCode(message.getSafeHatCode());
		
		Gateway gateway = new Gateway();
		gateway.setCode(message.getGatewayCode());
		
		try {
			if (workerMapper.count(worker) != 1) {
				System.out.println("worker not 1 : return false");
				return false;
			}
			
			if (hatMapper.count(hat) != 1) {
				System.out.println("hat not 1 : return false");
				return false;
			}
			
			if (gatewayMapper.count(gateway) != 1) {
				System.out.println("gateway not 1 : return false");
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("return true");
		return true;
	}

}
