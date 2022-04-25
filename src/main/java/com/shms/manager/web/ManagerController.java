package com.shms.manager.web;

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

import com.shms.manager.service.Manager;
import com.shms.manager.service.impl.ManagerServiceImpl;

@RestController
@RequestMapping("/manager")
public class ManagerController {
	@Autowired
	private ManagerServiceImpl managerServiceImpl;
	
	/*
	@GetMapping("/form")
	public ModelAndView registManagerForm() {
		
		return new ModelAndView("manager/regist");
	}
	*/
	/*
	@PostMapping
	public ModelAndView registManager(@ModelAttribute @Valid Manager manager, Errors errors) throws Exception {
		if (errors.hasErrors()) {
			return new ModelAndView("manager/regits");
		}
		
		try {
			managerServiceImpl.registManager(manager);
			
			return new ModelAndView(new RedirectView("/manager"));
		} catch (Exception e) {
			return new ModelAndView("manager/regist");
		}
	}
	*/
	
	// 안전관리자 목록 조회
	@GetMapping
	public ModelAndView managerList() throws Exception {
		ModelAndView mav = new ModelAndView("manager/managerList");
		mav.addObject("managerList", managerServiceImpl.managerList());
		
		return mav;
	}
	
	/*
	@GetMapping("/{empNumber}")
	public ModelAndView viewManager(@ModelAttribute Manager manager) throws Exception {
		ModelAndView mav = new ModelAndView("manager/view");
		mav.addObject("manager", managerServiceImpl.viewManager(manager));
		
		return mav;
	}
	*/
	
	@GetMapping("/{empNumber}/form")
	public ModelAndView editManagerForm(@ModelAttribute Manager manager) throws Exception {
		ModelAndView mav = new ModelAndView("manager/edit");
		mav.addObject("manager", managerServiceImpl.viewManager(manager));
		
		return mav;
	}
	/*
	@PutMapping
	public ModelAndView editManager(@ModelAttribute Manager manager, Errors erros) throws Exception {
		managerServiceImpl.editManager(manager);
		
		return new ModelAndView(new RedirectView("/manager"));
	}
	*/
	/*
	@DeleteMapping
	public ModelAndView deleteManager(@ModelAttribute Manager manager) throws Exception {
		managerServiceImpl.deleteManager(manager);
		
		return new ModelAndView(new RedirectView("/manager"));
	}
	*/
	
	// refactoring
	
	// 비밀번호 초기화
	@RequestMapping(value="/resetPw")
	@ResponseBody
	public String resetPw(Manager manager) throws Exception {
		System.out.println("비밀번호 초기화 /resetPw 컨트롤러 들어옴 :" + manager.getEmpNum());
		
		// 세션에서 받아오는걸로 수정
		manager.setTheFstRgstUserId("admin01");
		manager.setFnlChngUserId("admin01");
		
		// 비밀번호 초기화 서비스 연결
		
		return resultMsg(1/* update 문 후 int 반환되도록 수정 */);
	}
	
	// 안전관리자 사원번호 중복체크
	@RequestMapping(value="/doubleCheck")
	@ResponseBody
	public String doubleCheck(Manager manager) throws Exception {
		System.out.println("안전관리자 사원번호 중복체크 /doubleCheck 컨트롤러 들어옴 :" + manager.getEmpNum());
		
		// 중복체크 서비스 연결
		return resultMsg(1/* count 문 후 int 반환되도록 수정 */);
	}

	// 안전관리자 상세조회
	@GetMapping("/{empNumber}")
	public Manager viewManager(@ModelAttribute Manager manager) throws Exception {
		System.out.println("@@@test");
		System.out.println(manager.getEmpNum());
		
		return managerServiceImpl.viewManager(manager);
	}
	
	// 안전관리자 등록
	@RequestMapping(value="/rgstManager")
	@ResponseBody
	public String registManager(@ModelAttribute @Valid Manager manager, Errors errors) throws Exception {
		System.out.println("안전관리자 등록 controller");
		System.out.println(manager.getEmpNum());
		System.out.println(manager.getName());
		System.out.println(manager.getPhoneNum());
		System.out.println(manager.getJob());
		return resultMsg(1);
	}
	
	// 안전관리자 수정검증
	
	// 안전관리자 수정
	@RequestMapping(value="/editManager")
	@ResponseBody
	public String editManager(@ModelAttribute @Valid Manager manager, Errors errors) throws Exception {
		System.out.println("안전관리자 수정 controller");
		System.out.println(manager.getEmpNum());
		System.out.println(manager.getName());
		System.out.println(manager.getPhoneNum());
		System.out.println(manager.getJob());
		return resultMsg(1);
	}
	
	// 안전관리자 삭제
	@RequestMapping(value="/deleteManager")
	@ResponseBody
	public String deleteManager(@ModelAttribute Manager manager) throws Exception {
		// 삭제 가 아닌 비활성화로 변경할 것
		System.out.println("deleteManager Controller");
		System.out.println("삭제할 사원번호 : " + manager.getEmpNum());
		
		return resultMsg(1);
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
