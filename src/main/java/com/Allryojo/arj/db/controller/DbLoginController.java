package com.Allryojo.arj.db.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Allryojo.arj.db.service.DbLoginService;
import com.Allryojo.arj.db.vo.DbUserVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class DbLoginController {

	@Autowired
	private DbLoginService dbLoginService;
	
//	@Autowired
//	   private DbLoginMapper dbLoginMapper;

	// @Autowired : 주입하려고 하는 객체의 타입이 일치하는지를 찾고 객체를 자동으로 주입
	@Autowired
	private PasswordEncoder encoder;
	
	@GetMapping("/login")
	public String loginForm() {
		log.info("login()..");
		return "login/login";
	}
	
//	@PostMapping("/login2")
//	public String loginForm2() {
//		log.info("login()..");
////		dbLoginMapper.insertUser(dbUserVO);
//		return "login/login2";
//	}

	@RequestMapping(value = "/loginInfo", method = RequestMethod.GET)
	public String loginInfo(Authentication authentication, Principal principal, Model model) {

		String u_id;

		// 1.SpringContextHolder를 통하여 가져오는 방법(일반적인 빈에서 사용 할수있음 )
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		u_id = auth.getName();
		System.out.println("유저 아이디:" + u_id);

		// 2.authentication 객체로 가져오는 방법(많은 )
		System.out.println("authentication 유저 아이디:" + authentication.getName());
		System.out.println("authentication 권한들:" + authentication.getAuthorities());

		// 3.Principal 객체로 가져오는 방법(가져올수 있는게 getName() 정도
		System.out.println("Principal 유저 아이디:" + principal.getName());

		return "redirect:/";
	}

	// restful 방식
	@GetMapping("/addDbUser/{u_id}/{u_pw}")
	   public String addDbUser(@PathVariable String u_id, @PathVariable String u_pw) throws Exception{
		   
		   System.out.println(u_id + ":" + u_pw);
		   
		   
		   DbUserVO dbUser = new DbUserVO();
		   dbUser.setU_id(u_id);
		   dbUser.setU_pw(encoder.encode(u_pw.toString().trim()));
		   
		   System.out.println(dbUser);


		   dbLoginService.addDbUser2(dbUser);
		   //dbService.addUser4(user);
		   
		   return "redirect:/";
	   
	   }
}
