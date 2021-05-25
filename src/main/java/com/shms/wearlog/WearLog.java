package com.shms.wearlog;

import java.io.Serializable;
import java.time.LocalDateTime;

import org.springframework.stereotype.Component;

@Component
@SuppressWarnings("serial")
public class WearLog implements Serializable{
	private int code;
	private String hatCode;
	private String gatewayCode;
	private String empNumber;
	private LocalDateTime time;
	private char isWear;
	private double latitude;
	private double longitude;
	
	private String name;
	private String phone;
	
	public WearLog() {	}

	public WearLog(int code, String hatCode, String gatewayCode, String empNumber, LocalDateTime time, char isWear,
			double latitude, double longitude) {
		this.code = code;
		this.hatCode = hatCode;
		this.gatewayCode = gatewayCode;
		this.empNumber = empNumber;
		this.time = time;
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

	public LocalDateTime getTime() {
		return time;
	}

	public void setTime(LocalDateTime time) {
		this.time = time;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
		
}
