package com.shms.common;

import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfiguration implements WebMvcConfigurer {
	@Value("${resources.notload.list}")
	private List<String> notLoadList;
	
	@Value("${spring.webservice.intro}")
	private String introPage;
	
	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		registry.addRedirectViewController("/", introPage);
	}
	 
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(new AuthCheckInterceptor())
			.addPathPatterns("/**")
			.excludePathPatterns("/portal/**")
			.excludePathPatterns("/vendor/**")
			.excludePathPatterns("/css/**")
			.excludePathPatterns("/img/**")
			.excludePathPatterns("/js/**")
			.excludePathPatterns("/error/**")
			.excludePathPatterns(notLoadList);
	}
}
