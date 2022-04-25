package com.shms.wearlog.service;

import java.io.Serializable;
import java.time.LocalDateTime;

import org.springframework.stereotype.Component;

import com.shms.worker.service.Worker;

@Component
@SuppressWarnings("serial")
public class WearLog implements Serializable{
	private int code;
	private String equipmentCode;
	private String workerNum;
	
	//@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss")
	private LocalDateTime recodeTime;
	private char isWear;
	private double latitude;
	private double longitude;
	
	public WearLog() {}

	public WearLog(int code, String equipmentCode, String workerNum, LocalDateTime recodeTime, char isWear,
			double latitude, double longitude) {
		this.code = code;
		this.equipmentCode = equipmentCode;
		this.workerNum = workerNum;
		this.recodeTime = recodeTime;
		this.isWear = isWear;
		this.latitude = latitude;
		this.longitude = longitude;
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

	public String getWorkerNum() {
		return workerNum;
	}

	public void setWorkerNum(String workerNum) {
		this.workerNum = workerNum;
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
	
}
