package com.shms.map;

import java.util.List;

import org.springframework.stereotype.Service;

import com.shms.wearlog.WearLog;

@Service
public interface MapService {
	public List<WearLog> listWearLog() throws Exception;
	public List<WearLog> personalWearLog() throws Exception;
	public List<WearLog> renewalWearLog() throws Exception;
}
