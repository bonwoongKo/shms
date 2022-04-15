package com.shms.gateway.service;

import java.util.List;

public interface GatewayService {
	public void registGateway(Gateway gateway) throws Exception;
	public List<Gateway> gatewayList() throws Exception;
	public Gateway viewGateway(Gateway gateway) throws Exception;
	public void editGateway(Gateway gateway) throws Exception;
	public void deleteGateway(Gateway gateway) throws Exception;
}
