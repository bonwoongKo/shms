package com.shms.gateway.service;

import java.io.Serializable;
import java.time.LocalDateTime;

import org.springframework.stereotype.Component;

@Component
@SuppressWarnings("serial")
public class Gateway implements Serializable{
	private String code;
	private LocalDateTime registDate;
	private char isDelete;
	
	public Gateway() {	}
	
	public Gateway(String code, LocalDateTime registDate, char isDelete) {
		this.code = code;
		this.registDate = registDate;
		this.isDelete = isDelete;
	}
	
	public String getCode() {
		return code;
	}
	
	public void setCode(String code) {
		this.code = code;
	}
	
	public LocalDateTime getRegistDate() {
		return registDate;
	}
	
	public void setRegistDate(LocalDateTime registDate) {
		this.registDate = registDate;
	}
	
	public char getIsDelete() {
		return isDelete;
	}
	
	public void setIsDelete(char isDelete) {
		this.isDelete = isDelete;
	}
}
