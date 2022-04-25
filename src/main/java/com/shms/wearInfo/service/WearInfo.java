package com.shms.wearInfo.service;

import java.io.Serializable;
import java.time.LocalDateTime;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

@Component
@SuppressWarnings("serial")
public class WearInfo implements Serializable {
	private int code;
	private String equipmentCode;
	private String cardNum;
	
	//@JsonDeserialize(using = LocalDateTimeDeserializer.class)
	//@JsonSerialize(using = LocalDateTimeSerializer.class)
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss[.SSS][.SS][.S]")
	private LocalDateTime recodeTime;
	private char isWear;
	private double latitude;
	private double longitude;
	
	public WearInfo() {	}

	public WearInfo(int code, String equipmentCode, String cardNum, LocalDateTime recodeTime, char isWear,
			double latitude, double longitude) {
		this.code = code;
		this.equipmentCode = equipmentCode;
		this.cardNum = cardNum;
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

	public String getCardNum() {
		return cardNum;
	}

	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
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
