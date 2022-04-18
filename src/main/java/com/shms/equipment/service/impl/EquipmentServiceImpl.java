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
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Equipment> equipmentList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Equipment viewEquipment(Equipment equipment) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void editEquipment(Equipment equipment) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteEquipment(Equipment equipment) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
