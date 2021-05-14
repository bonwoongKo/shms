package com.shms.gateway;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface GatewayService {
	public void registGateway(Gateway gateway) throws Exception;
	public List<Gateway> gatewayList(Gateway gateway) throws Exception;
	public Gateway viewGateway(Gateway gateway) throws Exception;
	public void editGateway(Gateway gateway) throws Exception;
	public void deleteGateway(Gateway gateway) throws Exception;
}
