package com.volume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.volume.domain.UsersVo;
import com.volume.service.MemberService;

import lombok.RequiredArgsConstructor;
//import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/member")
@RequiredArgsConstructor
//@Log4j2
public class MemberController {

	private final MemberService memberService;
	
	@GetMapping("/login")
	public String login() {
		return "/member/login";
	}
	
	@GetMapping("/join")
	public String join() {
		return "/member/join";
	}
	
	@PostMapping("/signup")
	public String signUp(UsersVo vo) {
		memberService.signUp(vo);
		return "redirect:/";
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
	
	@GetMapping("/changePw")
	public String changePw() {
		return "/member/changePw";
	}
	
	@GetMapping("/searchPwComplete")
	public String searchPwComplete() {
		return "/member/searchPwComplete";
	}
	
}

