package com.Allryojo.arj.db.controller;

import org.apache.ibatis.annotations.Insert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Allryojo.arj.db.mapper.DbJoinMapper;
import com.Allryojo.arj.db.service.DbJoinService;
import com.Allryojo.arj.db.vo.DbUserVO;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class DbJoinController {
	
	@Autowired
	private DbJoinService dbJoinService;
	
	@Autowired
	   private DbJoinMapper dbJoinMapper;
	
	@GetMapping("/")//추후에 메인페이지로 바꿔야 됨
	public String homeForm() {
		return "home";
	}
	
	@GetMapping("/join")
	public String joinForm(DbUserVO dbUserVO ) {
//		dbJoinMapper.insertUser(dbUserVO);
		log.info("joinForm().. " + dbUserVO);
		
		
		return "join/join";
	}
	
	@PostMapping("/addUser")
	public String joinForm2(DbUserVO dbUserVO ) {
		log.info("joinForm2().. " + dbUserVO);
		
		//dbJoinMapper.insertUser(dbUserVO);
		dbJoinService.addDbUser2(dbUserVO);
		
		
		return "redirect:/login";
	}
	
	
	
}
