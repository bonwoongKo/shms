package com.shms.equipment.web;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.shms.equipment.service.Equipment;
import com.shms.equipment.service.impl.EquipmentServiceImpl;

@RestController
@RequestMapping("/equipment")
public class EquipmentController {
	@Autowired
	private EquipmentServiceImpl equipmentServiceImpl;
	
	@GetMapping("/form")
	public ModelAndView registEquipmentForm() {
		
		return new ModelAndView("equipment/rgist");
	}
	
	/**
	 * 장비 등록
	 */
	@PostMapping
	public ModelAndView registEquipment(@ModelAttribute @Valid Equipment equipment,
			Errors errors) throws Exception {
		if (errors.hasErrors()) {
			return new ModelAndView("equipment/rgist");
		}
		
		try {
			equipmentServiceImpl.registEquipment(equipment);
			
			return new ModelAndView(new RedirectView("equipment"));
		} catch (Exception e) {
			return new ModelAndView("equipment/rgist");
		}
	}
	
	/**
	 * 장비 리스트 조회
	 */
	@GetMapping
	public ModelAndView EquipmentList(@ModelAttribute Equipment equipment
			) throws Exception {
		ModelAndView mav = new ModelAndView("equipment/equipmentList");
		mav.addObject("equipmentList", equipmentServiceImpl.equipmentList());
		
		return mav;
	}
	
	/**
	 * 장비 삭제
	 */
	@DeleteMapping
	public ModelAndView deleteEquip(@ModelAttribute Equipment equipment, Errors errors
			) throws Exception {
		equipmentServiceImpl.deleteEquipment(equipment);
		
		return new ModelAndView(new RedirectView("equipment"));
	}
	
}












