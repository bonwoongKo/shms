package com.shms.equipment.service;

import java.util.List;

public interface EquipmentMapper {
	public int count(Equipment equipment) throws Exception;
	public List<Equipment> list() throws Exception;
	public Equipment select(Equipment equipment) throws Exception;
	public void insert(Equipment equipment) throws Exception;
	public void update(Equipment equipment) throws Exception;
	public void delete(Equipment equipment) throws Exception;
	
}
