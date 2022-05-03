package com.shms.wearInfo.service;

import java.io.Serializable;
import java.time.LocalDateTime;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

@Component
@SuppressWarnings("serial")
public class WearInfo implements Serializable {
	private int code;
	private String hatCode;
	private String gatewayCode;
	private String cardNum;
	
	//@JsonDeserialize(using = LocalDateTimeDeserializer.class)
	//@JsonSerialize(using = LocalDateTimeSerializer.class)
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss[.SSS][.SS][.S]")
	private LocalDateTime recordTime;
	private char isWear;
	private double latitude;
	private double longitude;
	
	public WearInfo() {	}

	public WearInfo(int code, String hatCode, String gatewayCode, String cardNum, LocalDateTime recordTime, char isWear,
			double latitude, double longitude) {
		super();
		this.code = code;
		this.hatCode = hatCode;
		this.gatewayCode = gatewayCode;
		this.cardNum = cardNum;
		this.recordTime = recordTime;
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
	public String getCardNum() {
		return cardNum;
	}
	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
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
}
