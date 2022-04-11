package com.shms.wearlog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shms.wearlog.service.WearLog;
import com.shms.wearlog.service.WearLogMapper;
import com.shms.wearlog.service.WearLogService;

@Service
public class WearLogServiceImpl implements WearLogService {
	@Autowired
	private WearLogMapper wearLogMapper;
	
	@Override
	public void registWearLog(WearLog wearLog) throws Exception {
		wearLogMapper.insert(wearLog);
	}

	@Override
	public List<WearLog> wearLogList() throws Exception {
		
		return wearLogMapper.list();
	}

	@Override
	public List<WearLog> viewWearLog(WearLog wearLog) throws Exception {
		
		return wearLogMapper.viewWearLog(wearLog);
	}
	
	@Override
	public List<WearLog> searchWearLog(String name) throws Exception {
		
		return wearLogMapper.searchWearLog(name);
	}

	@Override
	public void deleteWearLog(WearLog wearLog) throws Exception {
		wearLogMapper.delete(wearLog);
	}

}
