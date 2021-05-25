package com.shms.common;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class WearInfoValidator implements Validator {
	@Override
	public boolean supports(Class<?> clazz) {
		return WearInfo.class.isAssignableFrom(clazz);
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		WearInfo WearInfo = (WearInfo) target;
		
		if(WearInfo.getCardNumber().length() != 8 || WearInfo.getCardNumber() == null || WearInfo.getCardNumber().isEmpty()) {
			errors.rejectValue("cardNumber", "broken");
		}
		
		if(WearInfo.getHatCode().length() != 5 || WearInfo.getHatCode() == null || WearInfo.getHatCode().isEmpty()) {
			errors.rejectValue("safeHatCode", "broken");
		}
		
		if(WearInfo.getGatewayCode().length() != 5 || WearInfo.getHatCode() == null || WearInfo.getHatCode().isEmpty()) {
			errors.rejectValue("gatewayCode", "broken");
		}
		
		if(WearInfo.getIsWear() != 'Y' && WearInfo.getIsWear() != 'N') {
			errors.rejectValue("isWear", "broken");
		}
		
//		if(longitude < 124 || longitude > 132) {
//			errors.rejectValue("longitude", "broken");
//		}
//		
//		if(latitude < 33 || latitude > 43) {
//			errors.rejectValue("latitude", "broken");
//		}
	}
}
