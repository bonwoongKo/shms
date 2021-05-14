package com.shms.common;

import org.springframework.stereotype.Service;

@Service
public class WearInfoServiceImpl implements WearInfoService {

	@Override
	public void receiveWearInfo(Message message) {
		
	}

	@Override
	public boolean vaildWearInfo(Message message) {
		return false;
	}

}
