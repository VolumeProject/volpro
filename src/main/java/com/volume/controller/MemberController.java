package com.volume.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.volume.common.MailSenderRunner;
import com.volume.domain.GenreVo;
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
	private final MailSenderRunner mailSenderRunner;
	
	@GetMapping("/login")
	public String login() {
		return "/member/login";
	}
	
	@GetMapping("/join")
	public String join(Model model) {
		List<GenreVo> genreList = memberService.getGenre();
		model.addAttribute("genreList", genreList);
		return "/member/join";
	}
	
	@PostMapping("/signup")
	public void signUp(UsersVo vo) {
		memberService.signUp(vo);
	}
	
	String checkIncode="";
	
	@GetMapping("/mail")
	@ResponseBody
	public String mailSend(String mail) {
		checkIncode = mailSenderRunner.sendMail(mail);
		// 인증번호가 String으로 리턴됨
		// json 리턴하고싶으면?
		return checkIncode;
	}
	
	@ResponseBody
	@GetMapping("/member-count")  
	public int countMemberByLoginId(@RequestParam String users_id) {
		System.out.println(">>>>>>>>>"+users_id);
		return memberService.countMemberByLoginId(users_id);
	}
	
	@GetMapping("/signup")
	public String signUpForm(String incodeCheck, Model model) {
		if(checkIncode.equals(incodeCheck)) {
			model.addAttribute("check", incodeCheck);
			checkIncode = "";
			return "/member/signup";
		}else {
			checkIncode = "";
			return "/member/mailsend";
		}
		
	}
	
	/*
	 * @PostMapping("/preferInsert") public void
	 * preferInsert(@RequestParam("selectedGenres") List<Integer>
	 * selectedGenres,@RequestParam("users_id") String users_id) { for (int genre_no
	 * : selectedGenres) { memberService.preperInsert(genre_no, users_id); } }
	 */
	    
	
	
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

