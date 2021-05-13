package com.shms.gateway;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface GatewayService {
	public void registGateway(Gateway gateway);
	public List<Gateway> gatewayList(Gateway gateway);
	public Gateway viewGateway(Gateway gateway);
	public void editGateway(Gateway gateway);
	public void deleteGateway(Gateway gateway);
}
