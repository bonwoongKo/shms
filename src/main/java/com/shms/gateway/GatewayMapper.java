package com.shms.gateway;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface GatewayMapper {
	public int count(Gateway gateway) throws Exception;
	public List<Gateway> list() throws Exception;
	public Gateway select(Gateway gateway) throws Exception;
	public void insert(Gateway gateway) throws Exception;
	public void update(Gateway gateway) throws Exception;
	public void delete(Gateway gateway) throws Exception;
}
