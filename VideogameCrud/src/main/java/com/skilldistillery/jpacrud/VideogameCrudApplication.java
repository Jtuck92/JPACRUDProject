package com.skilldistillery.jpacrud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldistillery.jpacrud")
public class VideogameCrudApplication {

	public static void main(String[] args) {
		SpringApplication.run(VideogameCrudApplication.class, args);
	}

}
