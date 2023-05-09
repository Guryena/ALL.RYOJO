package com.Allryojo.arj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/travel")

public class TravelController {
	@GetMapping("/main")
	public String travel_main() {
		log.info("travel_main()..");
	
		return "travel/travel_main";
	}
	
	@GetMapping("/hokkaido")
	public String hokkaido() {
		log.info("hokkaido()..");
		
		return "travel/hokkaido";
	}
}
