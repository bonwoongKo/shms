package com.shms.common;

import org.springframework.stereotype.Service;

@Service
public interface WearInfoService {
	public void receiveWearInfo(Message message);
	public boolean vaildWearInfo(Message message);
}
