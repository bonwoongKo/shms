package com.shms.hat.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface HatMapper {
	public int count(Hat hat) throws Exception;
	public List<Hat> list() throws Exception;
	public Hat select(Hat hat) throws Exception;
	public void insert(Hat hat) throws Exception;
	public void update(Hat hat) throws Exception;
	public void delete(Hat hat) throws Exception;
}
