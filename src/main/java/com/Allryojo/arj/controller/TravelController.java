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
	
	@GetMapping("/tohoku")
	public String tohoku() {
		log.info("tohoku()..");
		
		return "travel/tohoku";
	}
	
	@GetMapping("/kanto")
	public String kanto() {
		log.info("kanto()..");
		
		return "travel/kanto";
	}
	
	@GetMapping("/chubu")
	public String chubu() {
		log.info("chubu()..");
		
		return "travel/chubu";
	}
	
	@GetMapping("/kinki")
	public String kinki() {
		log.info("kinki()..");
		
		return "travel/kinki";
	}
	
	@GetMapping("/chugoku")
	public String chugoku() {
		log.info("chugoku()..");
		
		return "travel/chugoku";
	}
	
	@GetMapping("/sikoku")
	public String sikoku() {
		log.info("sikoku()..");
		
		return "travel/sikoku";
	}
	
	@GetMapping("/kyushu")
	public String kyushu() {
		log.info("kyushu()..");
		
		return "travel/kyushu";
	}
	
	@GetMapping("/okinawa")
	public String okinawa() {
		log.info("okinawa()..");
		
		return "travel/okinawa";
	}
	
	
}
