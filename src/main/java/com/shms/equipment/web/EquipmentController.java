package com.shms.equipment.web;

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
import com.shms.gateway.service.Gateway;

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
	public ModelAndView registEquipment(@ModelAttribute Equipment equipment,
			Errors errors) throws Exception {
		//equipmentServiceImpl.registEquipment
		
		return new ModelAndView(new RedirectView("/equipment"));
	}
	
	/**
	 * 장비 리스트 조회
	 */
	@GetMapping
	public ModelAndView EquipmentList(@ModelAttribute Equipment equipment
			) throws Exception {
		ModelAndView mav = new ModelAndView("equipment/list");
		
		// mav.addObject(장비 리스트 이름, 장비 리스트);
		
		return mav;
	}
	
	/**
	 * 장비 삭제
	 */
	@DeleteMapping
	public ModelAndView deleteEquip(@ModelAttribute Equipment equipment, Errors errors
			) throws Exception {
		//장비 삭제
		
		return new ModelAndView(new RedirectView("equipment"));
	}
	
}












