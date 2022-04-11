package com.shms.worker.service;

import java.io.Serializable;
import java.util.Date;

import org.springframework.stereotype.Component;

@Component
@SuppressWarnings("serial")
public class Worker implements Serializable{
	private String workerNum;
	private String empNum;
	private String name;
	private String cardNum;
	private String phoneNum;
	private char isDelete;
	
	private Date theFstRgstDttm;
	private String theFstRgstUserId;
	private Date fnlChngDttm;
	private String fnlChngUserId;
	
	public Worker() { }
	
	public Worker(String workerNum, String empNum, String name, String cardNum, String phoneNum, char isDelete,
			Date theFstRgstDttm, String theFstRgstUserId, Date fnlChngDttm, String fnlChngUserId) {
		this.workerNum = workerNum;
		this.empNum = empNum;
		this.name = name;
		this.cardNum = cardNum;
		this.phoneNum = phoneNum;
		this.isDelete = isDelete;
		this.theFstRgstDttm = theFstRgstDttm;
		this.theFstRgstUserId = theFstRgstUserId;
		this.fnlChngDttm = fnlChngDttm;
		this.fnlChngUserId = fnlChngUserId;
	}

	public String getWorkerNum() {
		return workerNum;
	}
	public void setWorkerNum(String workerNum) {
		this.workerNum = workerNum;
	}
	public String getEmpNum() {
		return empNum;
	}
	public void setEmpNum(String empNum) {
		this.empNum = empNum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCardNum() {
		return cardNum;
	}
	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public char getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(char isDelete) {
		this.isDelete = isDelete;
	}
	public Date getTheFstRgstDttm() {
		return theFstRgstDttm;
	}
	public void setTheFstRgstDttm(Date theFstRgstDttm) {
		this.theFstRgstDttm = theFstRgstDttm;
	}
	public String getTheFstRgstUserId() {
		return theFstRgstUserId;
	}
	public void setTheFstRgstUserId(String theFstRgstUserId) {
		this.theFstRgstUserId = theFstRgstUserId;
	}
	public Date getFnlChngDttm() {
		return fnlChngDttm;
	}
	public void setFnlChngDttm(Date fnlChngDttm) {
		this.fnlChngDttm = fnlChngDttm;
	}
	public String getFnlChngUserId() {
		return fnlChngUserId;
	}
	public void setFnlChngUserId(String fnlChngUserId) {
		this.fnlChngUserId = fnlChngUserId;
	}
}
