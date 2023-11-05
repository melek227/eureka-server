package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
//eureka-server annotasyonunu bu springboot uygulamasını eureka sunucusu olarak etkinleştirmek için kullandık
public class EurokaServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(EurokaServerApplication.class, args);
	}

}
