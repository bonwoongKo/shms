package com.shms.equipment.service;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class EquipmentValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return Equipment.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "code", "required");
		ValidationUtils.rejectIfEmpty(errors, "empNum", "required");
	}
	
}
