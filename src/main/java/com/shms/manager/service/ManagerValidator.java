package com.shms.manager.service;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class ManagerValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return Manager.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "empNum", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "required");
		ValidationUtils.rejectIfEmpty(errors, "name", "required");
		ValidationUtils.rejectIfEmpty(errors, "phoneNum", "required");
		ValidationUtils.rejectIfEmpty(errors, "job", "required");
	}
	
}
