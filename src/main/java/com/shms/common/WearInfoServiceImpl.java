package com.shms.common;

import org.springframework.stereotype.Service;

@Service
public class WearInfoServiceImpl implements WearInfoService {

	@Override
	public void receiveWearInfo(WearInfo message) {
		
	}

	@Override
	public boolean vaildWearInfo(WearInfo message) {
		return false;
	}

}
