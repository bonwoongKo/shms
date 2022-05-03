package com.shms.wearInfo.service;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class WearInfoValidator implements Validator {
	@Override
	public boolean supports(Class<?> clazz) {
		return WearInfo.class.isAssignableFrom(clazz);
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		WearInfo wearInfo = (WearInfo) target;
		
		ValidationUtils.rejectIfEmpty(errors, "cardNumber", "required");
		ValidationUtils.rejectIfEmpty(errors, "equipmentCode", "required");
		ValidationUtils.rejectIfEmpty(errors, "recordTime", "required");
		ValidationUtils.rejectIfEmpty(errors, "isWear", "required");
		ValidationUtils.rejectIfEmpty(errors, "latitude", "required");
		ValidationUtils.rejectIfEmpty(errors, "longitude", "required");
		
		if (wearInfo.getIsWear() != 'Y' && wearInfo.getIsWear() != 'N') {
			errors.rejectValue("isWear", "broken");
		}
	}
}
