package com.shms.equipment.service;

import java.util.List;

public interface EquipmentService {
	public int registEquipment(Equipment equipment) throws Exception;
	public List<Equipment> equipmentList() throws Exception;
	public Equipment viewEquipment(Equipment equipment) throws Exception;
	public int editEquipment(Equipment equipment) throws Exception;
	public int deleteEquipment(Equipment equipment) throws Exception;
	public int countEquipment(Equipment equipment) throws Exception;
}
