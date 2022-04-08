package com.shms.equipment.service;

import java.time.LocalDateTime;
import java.util.Date;

public class Equipment {
	private String code;
	private String empNum;
	private char sort;
	private LocalDateTime registDate;
	private char isUse;
	private char isDelete;
	
	private Date theFstRgstDttm;
	private String theFstRgstUserId;
	private Date fnlChngDttm;
	private String fnlChngUserId;
	
	public Equipment() { }
	
	public Equipment(String code, String empNum, char sort, LocalDateTime registDate, char isUse, char isDelete,
			Date theFstRgstDttm, String theFstRgstUserId, Date fnlChngDttm, String fnlChngUserId) {
		this.code = code;
		this.empNum = empNum;
		this.sort = sort;
		this.registDate = registDate;
		this.isUse = isUse;
		this.isDelete = isDelete;
		this.theFstRgstDttm = theFstRgstDttm;
		this.theFstRgstUserId = theFstRgstUserId;
		this.fnlChngDttm = fnlChngDttm;
		this.fnlChngUserId = fnlChngUserId;
	}
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getEmpNum() {
		return empNum;
	}
	public void setEmpNum(String empNum) {
		this.empNum = empNum;
	}
	public char getSort() {
		return sort;
	}
	public void setSort(char sort) {
		this.sort = sort;
	}
	public LocalDateTime getRegistDate() {
		return registDate;
	}
	public void setRegistDate(LocalDateTime registDate) {
		this.registDate = registDate;
	}
	public char getIsUse() {
		return isUse;
	}
	public void setIsUse(char isUse) {
		this.isUse = isUse;
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
