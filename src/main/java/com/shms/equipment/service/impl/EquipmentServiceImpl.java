package com.shms.equipment.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shms.equipment.service.Equipment;
import com.shms.equipment.service.EquipmentMapper;
import com.shms.equipment.service.EquipmentService;

@Service
public class EquipmentServiceImpl implements EquipmentService{
	@Autowired
	private EquipmentMapper equipmentMapper;

	@Override
	public int registEquipment(Equipment equipment) throws Exception {
		return equipmentMapper.insert(equipment);
	}

	@Override
	public List<Equipment> equipmentList() throws Exception {
		return equipmentMapper.list();
	}

	@Override
	public Equipment viewEquipment(Equipment equipment) throws Exception {
		return equipmentMapper.select(equipment);
	}

	@Override
	public int editEquipment(Equipment equipment) throws Exception {
		return equipmentMapper.update(equipment);
	}

	@Override
	public int deleteEquipment(Equipment equipment) throws Exception {
		return equipmentMapper.delete(equipment);
	}

	@Override
	public int countEquipment(Equipment equipment) throws Exception {
		return equipmentMapper.count(equipment);
	}

}
