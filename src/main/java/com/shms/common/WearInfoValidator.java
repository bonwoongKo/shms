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
		
		if (WearInfo.getCardNumber().length() != 8 || WearInfo.getCardNumber() == null || WearInfo.getCardNumber().isEmpty()) {
			errors.rejectValue("cardNumber", "broken");
		}
		if (WearInfo.getSafeHatCode().length() != 5 || WearInfo.getSafeHatCode() == null || WearInfo.getSafeHatCode().isEmpty()) {
			errors.rejectValue("safeHatCode", "broken");
		}
		if (WearInfo.getGatewayCode().length() != 5 || WearInfo.getSafeHatCode() == null || WearInfo.getSafeHatCode().isEmpty()) {
			errors.rejectValue("gatewayCode", "broken");
		}
		if (WearInfo.getIsWear() != 'Y' && WearInfo.getIsWear() != 'N') {
			errors.rejectValue("isWear", "broken");
		}
	}
}
