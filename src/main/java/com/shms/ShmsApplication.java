package com.shms;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@MapperScan("com.shms")
@ComponentScan("com.shms")
public class ShmsApplication {

	public static void main(String[] args) {
		SpringApplication.run(ShmsApplication.class, args);
	}

}
