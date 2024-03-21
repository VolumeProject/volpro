package com.volume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {

	@GetMapping("/login")
	public String login() {
		return "/member/login";
	}
	
	@GetMapping("/join")
	public String join() {
		return "/member/join";
	}
	
	@GetMapping("/searchId")
	public String searchId() {
		return "/member/searchId";
	}
	
	@GetMapping("/searchIdComplete")
	public String searchIdComplete() {
		return "/member/searchIdComplete";
	}
	
	@GetMapping("/searchPw")
	public String searchPw() {
		return "/member/searchPw";
	}
	
	@GetMapping("/searchPwComplete")
	public String searchPwComplete() {
		return "/member/searchPwComplete";
	}
	
}

