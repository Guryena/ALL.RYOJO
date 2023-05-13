package com.Allryojo.arj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/reply")
public class ReplyTestController {

	@GetMapping("/test")
	public String replyAjaxTest() {
		return "/tutorial/reply_test";

	}

}
