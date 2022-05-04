package com.shms.equipment.web;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.shms.equipment.service.Equipment;
import com.shms.equipment.service.impl.EquipmentServiceImpl;
import com.shms.login.service.AuthInfo;
import com.shms.manager.service.Manager;
import com.shms.worker.service.Worker;

@RestController
@RequestMapping("/equipment")
public class EquipmentController {
	@Autowired
	private EquipmentServiceImpl equipmentServiceImpl;
	
	// 안전관리자 사원번호 중복체크
	@RequestMapping(value="/doubleCheck")
	@ResponseBody
	public String doubleCheck(Equipment equipment) throws Exception {
		
		return resultMsg(equipmentServiceImpl.countEquipment(equipment));
	}
	
	// 장비 등록
	@PostMapping
	public String registEquipment(@ModelAttribute @Valid Equipment equipment,
			Errors errors, HttpSession session) throws Exception {
		equipment.setTheFstRgstUserId(getSessionEmpNum(session));
		equipment.setFnlChngUserId(getSessionEmpNum(session));
		
		return resultMsg(equipmentServiceImpl.registEquipment(equipment));
	}
	
	// 장비 목록 조회
	@GetMapping
	public ModelAndView EquipmentList(@ModelAttribute Equipment equipment
			) throws Exception {
		ModelAndView mav = new ModelAndView("equipment/equipmentList");
		mav.addObject("equipmentList", equipmentServiceImpl.equipmentList());
		
		return mav;
	}
	
	// 장비 상세조회
	@GetMapping("/{code}")
	public Equipment viewEquipment(@ModelAttribute Equipment equipment) throws Exception {
		
		return equipmentServiceImpl.viewEquipment(equipment);
	}
	
	// 장비 수정
	@PutMapping
	public String editEquipment(@ModelAttribute Equipment equipment, Errors errors,  HttpSession session) throws Exception {
		equipment.setFnlChngUserId(getSessionEmpNum(session));
		
		return resultMsg(equipmentServiceImpl.editEquipment(equipment));
	}
	
	// 장비 삭제
	@DeleteMapping
	public String deleteEquipment(@ModelAttribute Equipment equipment, 
			Errors errors, HttpSession session) throws Exception {
		equipment.setFnlChngUserId(getSessionEmpNum(session));
		
		return resultMsg(equipmentServiceImpl.deleteEquipment(equipment));
	}
	
	// 세션의 AuthInfo로부터 empNum 값 가져오기
	private String getSessionEmpNum(HttpSession session) throws Exception {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		
		return authInfo.getEmpNum();
	}
	
	private String resultMsg(int i) {
		String resultMsg = "";
		if (i > 0) {
			resultMsg = "Y";
		}  else {
			resultMsg = "N";
		}
		
		return resultMsg;
	}
	
}












