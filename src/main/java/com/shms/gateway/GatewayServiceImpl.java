package com.shms.gateway;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GatewayServiceImpl implements GatewayService {
	@Autowired
	private GatewayMapper gatewayMapper;
	
	@Override
	public void registGateway(Gateway gateway) throws Exception {
		gatewayMapper.insert(gateway);
	}

	@Override
	public List<Gateway> gatewayList() throws Exception {
		return gatewayMapper.list();
	}

	@Override
	public Gateway viewGateway(Gateway gateway) throws Exception {
		return gatewayMapper.select(gateway);
	}

	@Override
	public void editGateway(Gateway gateway) throws Exception {
		gatewayMapper.update(gateway);
	}

	@Override
	public void deleteGateway(Gateway gateway) throws Exception {
		gatewayMapper.delete(gateway);
	}

}
