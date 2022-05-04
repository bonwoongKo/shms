package com.shms.worker.web;

import javax.servlet.http.HttpSession;

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

import com.shms.login.service.AuthInfo;
import com.shms.worker.service.Worker;
import com.shms.worker.service.impl.WorkerServiceImpl;

@RestController
@RequestMapping("/worker")
public class WorkerController {
	@Autowired
	private WorkerServiceImpl workerServiceImpl;
	
	// 근로자 등록
	@PostMapping
	public String registWorker(@ModelAttribute Worker worker, Errors erros, HttpSession session) throws Exception {
		worker.setTheFstRgstUserId(getSessionEmpNum(session));
		worker.setFnlChngUserId(getSessionEmpNum(session));
		
		return resultMsg(workerServiceImpl.registWorker(worker));
	}
	
	// 근로자 목록 조회
	@GetMapping
	public ModelAndView workerList() throws Exception {
		ModelAndView mav = new ModelAndView("worker/workerList");
		mav.addObject("workerList", workerServiceImpl.workerList());
		
		return mav;
	}

	// 안전관리자 상세조회
	@GetMapping("/{workerNum}")
	public Worker viewManager(@ModelAttribute Worker worker, HttpSession session) throws Exception {

		return workerServiceImpl.viewWorker(worker);
	}
	
	// 근로자 수정
	@PutMapping
	public String editWorker(@ModelAttribute Worker worker, Errors errors, HttpSession session) throws Exception {
		worker.setFnlChngUserId(getSessionEmpNum(session));
		
		return resultMsg(workerServiceImpl.editWorker(worker));
	}
	
	// 근로자 삭제
	@DeleteMapping
	public String deleteWorker(@ModelAttribute Worker worker, HttpSession session) throws Exception {
		worker.setFnlChngUserId(getSessionEmpNum(session));

		return resultMsg(workerServiceImpl.deleteWorker(worker));
	}
	
	// 안전관리자 사원번호 중복체크
	@RequestMapping(value="/doubleCheck")
	@ResponseBody
	public String doubleCheck(Worker worker) throws Exception {
		// 중복이라면 Y 중복이 아니라면 N 반환
		return resultMsg(workerServiceImpl.countWorker(worker));
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
