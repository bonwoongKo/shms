package com.shms.map.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shms.map.service.MapService;
import com.shms.wearlog.service.WearLog;
import com.shms.wearlog.service.WearLogMapper;

@Service
public class MapServiceImpl implements MapService {
	@Autowired
	private WearLogMapper wearLogMapper;
	
	@Override
	public List<WearLog> listWearLog() throws Exception {
		
		return wearLogMapper.list();
	}
}
