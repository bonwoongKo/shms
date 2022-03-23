package com.shms.map.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.shms.wearlog.service.WearLog;

@Service
public interface MapService {
	public List<WearLog> listWearLog() throws Exception;
}
