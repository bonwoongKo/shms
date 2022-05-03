package com.shms.wearlog.service;

import java.io.Serializable;
import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import com.shms.worker.service.Worker;

@Component
@SuppressWarnings("serial")
public class WearLog implements Serializable{
	private int code;
	private String hatCode;
	private String gatewayCode;
	private String workerNum;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss")
	private LocalDateTime recordTime;
	private char isWear;
	private double latitude;
	private double longitude;
	
	private Worker worker;
	
	public WearLog() { }
	
	public WearLog(int code, String hatCode, String gatewayCode, String workerNum, LocalDateTime recordTime,
			char isWear, double latitude, double longitude, Worker worker) {
		this.code = code;
		this.hatCode = hatCode;
		this.gatewayCode = gatewayCode;
		this.workerNum = workerNum;
		this.recordTime = recordTime;
		this.isWear = isWear;
		this.latitude = latitude;
		this.longitude = longitude;
		this.worker = worker;
	}

	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getHatCode() {
		return hatCode;
	}
	public void setHatCode(String hatCode) {
		this.hatCode = hatCode;
	}
	public String getGatewayCode() {
		return gatewayCode;
	}
	public void setGatewayCode(String gatewayCode) {
		this.gatewayCode = gatewayCode;
	}
	public String getWorkerNum() {
		return workerNum;
	}
	public void setWorkerNum(String workerNum) {
		this.workerNum = workerNum;
	}
	public LocalDateTime getRecordTime() {
		return recordTime;
	}
	public void setRecordTime(LocalDateTime recordTime) {
		this.recordTime = recordTime;
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
}
