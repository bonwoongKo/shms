package com.shms.gateway;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface GatewayMapper {
	public int count(Gateway gateway) throws Exception;
	public List<Gateway> list(Gateway gateway) throws Exception;
	public Gateway select(Gateway gateway) throws Exception;
	public void insert(Gateway gateway) throws Exception;
	public void update(Gateway gateway) throws Exception;
	public void delete(Gateway gateway) throws Exception;
}
