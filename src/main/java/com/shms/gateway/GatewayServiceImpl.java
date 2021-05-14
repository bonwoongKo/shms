package com.shms.gateway;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GatewayServiceImpl implements GatewayService {
	@Autowired
	private GatewayMapper gatewayMapper;
	
	@Override
	public void registGateway(Gateway gateway) {
		
	}

	@Override
	public List<Gateway> gatewayList(Gateway gateway) {
		return null;
	}

	@Override
	public Gateway viewGateway(Gateway gateway) {
		return null;
	}

	@Override
	public void editGateway(Gateway gateway) {
		
	}

	@Override
	public void deleteGateway(Gateway gateway) {
		
	}

}
