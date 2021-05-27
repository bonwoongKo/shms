package com.shms.wearlog;

import java.util.List;

public interface WearLogService {
	public void registWearLog(WearLog wearLog) throws Exception;
	public List<WearLog> wearLogList() throws Exception;
	public List<WearLog> viewWearLog(WearLog wearLog) throws Exception;
	public List<WearLog> searchWearLog(String name) throws Exception;
	public void deleteWearLog(WearLog wearLog) throws Exception;
}
