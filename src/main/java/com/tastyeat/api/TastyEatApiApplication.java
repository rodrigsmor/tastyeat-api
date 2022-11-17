package com.tastyeat.api;

import com.tastyeat.api.model.Role;
import com.tastyeat.api.service.mold.AuthService;
import com.tastyeat.api.utils.constants.RoleTypes;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@Slf4j
@SpringBootApplication
public class TastyEatApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(TastyEatApiApplication.class, args);
	}

	@Bean
	CommandLineRunner run(AuthService userService) {
		return args -> {
			userService.createRole(new Role(RoleTypes.ADMIN));
			userService.createRole(new Role(RoleTypes.USER));
		};
	}
}
