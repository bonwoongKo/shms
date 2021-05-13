package com.shms.wearlog;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface WearLogService {
	public void registWearLog(WearLog wearLog);
	public List<WearLog> wearLogList(WearLog wearLog);
	public WearLog viewWearLog(WearLog wearLog);
	public void deleteWearLog(WearLog wearLog);
}
