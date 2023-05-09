package com.Allryojo.arj.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Allryojo.arj.service.StatisticsService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/arj")
@RequiredArgsConstructor
public class StatisticsController {
	
	@Autowired
	private StatisticsService statisticsService;
	
	
	@GetMapping("/statistics/population")
	public String veiw_population(Model model) {
		log.info("veiw_population()...");
		System.out.println("veiw_population()...");
		
		model.addAttribute("stat", statisticsService.getPopulationList()); //search "stat" in population.jsp, input function
		
		
		
		
		return "/statistics/population";
	}
	
	@GetMapping("/statistics/hospital")
	public String veiw_hospital(Model model) {
		log.info("veiw_hospital()...");
		System.out.println("veiw_hospital()...");
		
		model.addAttribute("stat", statisticsService.getHospitalList()); //search "stat" in population.jsp, input function
		
		
		
		
		return "/statistics/hospital";
	}
	
}
