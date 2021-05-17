package com.shms.common;

import org.springframework.stereotype.Service;

@Service
public interface WearInfoService {
	public void receiveWearInfo(WearInfo message);
	public boolean vaildWearInfo(WearInfo message);
}
