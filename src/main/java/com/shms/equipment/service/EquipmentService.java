package com.shms.equipment.service;

import java.util.List;

public interface EquipmentService {
	public void registEquipment(Equipment equipment) throws Exception;
	public List<Equipment> equipmentList() throws Exception;
	public Equipment viewEquipment(Equipment equipment) throws Exception;
	public void editEquipment(Equipment equipment) throws Exception;
	public void deleteEquipment(Equipment equipment) throws Exception;
	
}
