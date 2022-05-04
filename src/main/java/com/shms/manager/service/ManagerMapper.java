package com.shms.manager.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ManagerMapper {
	public int count(Manager manager) throws Exception;
	public List<Manager> list() throws Exception;
	public Manager select(Manager manager) throws Exception;
	public Manager selectByEmpNum(String empNum);
	public int insert(Manager manager) throws Exception;
	public int update(Manager manager) throws Exception;
	public int delete(Manager manager) throws Exception;
	public int resetPw(Manager manager) throws Exception;
}
