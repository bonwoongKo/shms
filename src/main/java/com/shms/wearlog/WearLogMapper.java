package com.shms.wearlog;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface WearLogMapper {
	public int count(WearLog wearLog) throws Exception;
	public List<WearLog> list() throws Exception;
	public WearLog select(WearLog wearLog) throws Exception;
	public void insert(WearLog wearLog) throws Exception;
	public void update(WearLog wearLog) throws Exception;
	public void delete(WearLog wearLog) throws Exception;
}
