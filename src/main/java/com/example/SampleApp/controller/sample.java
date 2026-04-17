package com.example.SampleApp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class sample {
	
	@GetMapping("/")
	public String first() {
		return "Hello render";
	}

}
