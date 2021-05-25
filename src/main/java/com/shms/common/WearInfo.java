package com.shms.common;

import java.io.Serializable;
import java.time.LocalDateTime;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateTimeDeserializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;

@Component
@SuppressWarnings("serial")
public class WearInfo implements Serializable {
	private int code;
	private String safeHatCode;
	private String gatewayCode;
	private String cardNumber;
	
	@JsonDeserialize(using = LocalDateTimeDeserializer.class)
	@JsonSerialize(using = LocalDateTimeSerializer.class)
	private LocalDateTime time;
	private char isWear;
	private double latitude;
	private double longitude;
	
	public WearInfo() {	}

	public WearInfo(int code, String hatCode, String gatewayCode, String empNumber, LocalDateTime dateTime, char isWear,
			double latitude, double longitude) {
		this.code = code;
		this.safeHatCode = hatCode;
		this.gatewayCode = gatewayCode;
		this.cardNumber = empNumber;
		this.time = dateTime;
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

	public String getSafeHatCode() {
		return safeHatCode;
	}

	public void setSafeHatCode(String safeHatCode) {
		this.safeHatCode = safeHatCode;
	}

	public String getGatewayCode() {
		return gatewayCode;
	}

	public void setGatewayCode(String gatewayCode) {
		this.gatewayCode = gatewayCode;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
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

}
