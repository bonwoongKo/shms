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
	public List<WearLog> listWearLog() throws Exception { // 오늘 근무중인 근로자들의 착용 기록 리스트를 반환해야함 (근로자 이름 정렬)
		
		return wearLogMapper.list();
	}
		
	@Override
	public List<WearLog> personalWearLog() throws Exception { //한 사원의 하루에 대한 착용 기록 리스트를 반환해야함 (시간 정렬)
		
		return wearLogMapper.list();
	}

	@Override
	public List<WearLog> renewalWearLog() throws Exception { //monitoring.jsp에서 계속해서 호출해주어 비동기 통신하기 위한 메서드
	
		return wearLogMapper.list();
	}

}
