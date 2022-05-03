package com.shms.worker.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface WorkerMapper {
	public int count(Worker worker) throws Exception;
	public List<Worker> list() throws Exception;
	public Worker select(Worker worker) throws Exception;
	public int insert(Worker worker) throws Exception;
	public int update(Worker worker) throws Exception;
	public int delete(Worker worker) throws Exception;
}
