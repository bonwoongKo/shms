package com.shms.common;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProfileController {
	private final Environment env;
	
	@Autowired
	public ProfileController(Environment env) {
		this.env = env;
	}
	
	@GetMapping("/profile")
	public String profile() {
		List<String> profiles = Arrays.asList(env.getActiveProfiles());
		List<String> realProfiles = Arrays.asList("real", "real1", "real2");
		String defaultProfile = profiles.isEmpty()? "default" : profiles.get(0);
		
		return profiles.stream().filter(realProfiles::contains).findAny().orElse(defaultProfile);
	}
}
