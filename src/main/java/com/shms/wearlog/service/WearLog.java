package com.shms.wearlog.service;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import com.shms.worker.service.Worker;

@Component
@SuppressWarnings("serial")
public class WearLog implements Serializable{
	private int code;
	private String equipmentCode;
	//@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss")
	private LocalDateTime recodeTime;
	private char isWear;
	private double latitude;
	private double longitude;
	private Worker worker;
	
	private Date theFstRgstDttm;
	private String theFstRgstUserId;
	private Date fnlChngDttm;
	private String fnlChngUserId;
	
	public WearLog() {}

	public WearLog(int code, String equipmentCode, LocalDateTime recodeTime, char isWear, double latitude,
			double longitude, Worker worker, Date theFstRgstDttm, String theFstRgstUserId, Date fnlChngDttm,
			String fnlChngUserId) {
		this.code = code;
		this.equipmentCode = equipmentCode;
		this.recodeTime = recodeTime;
		this.isWear = isWear;
		this.latitude = latitude;
		this.longitude = longitude;
		this.worker = worker;
		this.theFstRgstDttm = theFstRgstDttm;
		this.theFstRgstUserId = theFstRgstUserId;
		this.fnlChngDttm = fnlChngDttm;
		this.fnlChngUserId = fnlChngUserId;
	}

	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getEquipmentCode() {
		return equipmentCode;
	}
	public void setEquipmentCode(String equipmentCode) {
		this.equipmentCode = equipmentCode;
	}
	public LocalDateTime getRecodeTime() {
		return recodeTime;
	}
	public void setRecodeTime(LocalDateTime recodeTime) {
		this.recodeTime = recodeTime;
	}
	public char getIsWear() {
		return isWear;
	}
	public void setIsWear(char isWear) {
		this.isWear = isWear;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public Worker getWorker() {
		return worker;
	}
	public void setWorker(Worker worker) {
		this.worker = worker;
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
