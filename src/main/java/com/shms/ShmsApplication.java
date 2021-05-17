package com.shms;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = {"com.shms"})
public class ShmsApplication {

	public static void main(String[] args) {
		SpringApplication.run(ShmsApplication.class, args);
	}

}
