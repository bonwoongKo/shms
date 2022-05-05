package com.shms.common;

import org.springframework.stereotype.Component;

@Component
public class ResultMsg {
	private boolean isDataExist;

	ResultMsg() { } 
	
	ResultMsg(int i) {
		if (i > 0) {
			isDataExist = true;
		}
	}
	
	public boolean isDataExist() {
		return isDataExist;
	}
	public void setDataExist(boolean isDataExist) {
		this.isDataExist = isDataExist;
	}
}
