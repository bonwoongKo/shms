package com.shms.common;

import java.io.Serializable;
import java.time.LocalDateTime;

import org.springframework.stereotype.Component;

@Component
@SuppressWarnings("serial")
public class WearInfo implements Serializable {
	private int code;
	private String hatCode;
	private String gatewayCode;
	private String empNumber;
	private LocalDateTime dateTime;
	private char isWear;
	private double latitude;
	private double longitude;
	
	public WearInfo() {	}

	public WearInfo(int code, String hatCode, String gatewayCode, String empNumber, LocalDateTime dateTime, char isWear,
			double latitude, double longitude) {
		this.code = code;
		this.hatCode = hatCode;
		this.gatewayCode = gatewayCode;
		this.empNumber = empNumber;
		this.dateTime = dateTime;
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

	public String getEmpNumber() {
		return empNumber;
	}

	public void setEmpNumber(String empNumber) {
		this.empNumber = empNumber;
	}

	public LocalDateTime getDateTime() {
		return dateTime;
	}

	public void setDateTime(LocalDateTime dateTime) {
		this.dateTime = dateTime;
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
