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
	public void registEquipment(Equipment equipment) throws Exception {
		equipmentMapper.insert(equipment);
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
	public void editEquipment(Equipment equipment) throws Exception {
		equipmentMapper.update(equipment);
	}

	@Override
	public void deleteEquipment(Equipment equipment) throws Exception {
		equipmentMapper.delete(equipment);
	}

}
