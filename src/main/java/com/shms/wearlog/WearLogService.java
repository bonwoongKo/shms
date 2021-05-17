package com.shms.wearlog;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface WearLogService {
	public void registWearLog(WearLog wearLog) throws Exception;
	public List<WearLog> wearLogList() throws Exception;
	public WearLog viewWearLog(WearLog wearLog) throws Exception;
	public void deleteWearLog(WearLog wearLog) throws Exception;
}
