package com.shms.wearInfo.service;

import org.springframework.stereotype.Service;

@Service
public interface WearInfoService {
	public void receiveWearInfo(WearInfo message);
}
