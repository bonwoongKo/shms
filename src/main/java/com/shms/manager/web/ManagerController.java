package com.shms.manager.web;

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

import com.shms.login.service.AuthInfo;
import com.shms.manager.service.Manager;
import com.shms.manager.service.impl.ManagerServiceImpl;

@RestController
@RequestMapping("/manager")
public class ManagerController {
	@Autowired
	private ManagerServiceImpl managerServiceImpl;
	
	// 안전관리자 등록
	@PostMapping
	public String registManager(@ModelAttribute @Valid Manager manager, Errors errors, HttpSession session) throws Exception {
		manager.setTheFstRgstUserId(getSessionEmpNum(session));
		manager.setFnlChngUserId(getSessionEmpNum(session));
		
		return resultMsg(managerServiceImpl.registManager(manager));
	}
	
	// 안전관리자 목록 조회
	@GetMapping
	public ModelAndView managerList() throws Exception {
		ModelAndView mav = new ModelAndView("manager/managerList");
		mav.addObject("managerList", managerServiceImpl.managerList());
		
		return mav;
	}
	
	// 비밀번호 초기화
	@PutMapping(value="/resetPw")
	public String resetPw(Manager manager, HttpSession session) throws Exception {
		manager.setFnlChngUserId(getSessionEmpNum(session));
		
		// 비밀번호 초기화 서비스 연결
		return resultMsg(managerServiceImpl.resetPw(manager));
	}
	
	// 안전관리자 사원번호 중복체크
	@RequestMapping(value="/doubleCheck")
	@ResponseBody
	public String doubleCheck(Manager manager) throws Exception {
		
		return resultMsg(managerServiceImpl.countManager(manager));
	}

	// 안전관리자 상세조회
	@GetMapping("/{empNumber}")
	public Manager viewManager(@ModelAttribute Manager manager) throws Exception {
		
		return managerServiceImpl.viewManager(manager);
	}
	
	// (안전관리자) 내정보 조회
	@GetMapping("/userInfo")
	public ModelAndView viewUserInfo(@ModelAttribute Manager manager, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView("manager/userInfo");
		manager.setEmpNum(getSessionEmpNum(session));
		mav.addObject("userInfo", managerServiceImpl.viewManager(manager));
		
		return mav;
	}
	
	// 안전관리자 수정
	@PutMapping
	public String editManager(@ModelAttribute @Valid Manager manager, Errors errors,  HttpSession session) throws Exception {
		manager.setFnlChngUserId(getSessionEmpNum(session));
		
		return resultMsg(managerServiceImpl.editManager(manager));
	}
	
	// 안전관리자 삭제
	@DeleteMapping
	public String deleteManager(@ModelAttribute Manager manager,  HttpSession session) throws Exception {
		manager.setFnlChngUserId(getSessionEmpNum(session));
		
		return resultMsg(managerServiceImpl.deleteManager(manager));
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
