package com.skilldistillery.beaches;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@EntityScan("com.skilldistillery.jpabeaches")
@SpringBootApplication
public class BeachesApplication {

	public static void main(String[] args) {
		SpringApplication.run(BeachesApplication.class, args);
	}

}
