package com.shms.map;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shms.wearlog.WearLog;
import com.shms.wearlog.WearLogMapper;

@Service
public class MapServiceImpl implements MapService {
	@Autowired
	private WearLogMapper wearLogMapper;
	
	@Override
	public List<WearLog> listWearLog() throws Exception {
		
		return wearLogMapper.list();
	}
}
