package com.volume.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.volume.common.MailSenderRunner;
import com.volume.domain.GenreVo;
import com.volume.domain.UsersVo;
import com.volume.service.MemberService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/member")
@RequiredArgsConstructor
public class MemberController {

	private final MemberService memberService;
	private final MailSenderRunner mailSenderRunner;

	@GetMapping("/login")
	public String openLogin() {
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

	String checkIncode = "";

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
		System.out.println(">>>>>>>>>" + users_id);
		return memberService.countMemberByLoginId(users_id);
	}

	@GetMapping("/signup")
	public String signUpForm(String incodeCheck, Model model) {
		if (checkIncode.equals(incodeCheck)) {
			model.addAttribute("check", incodeCheck);
			checkIncode = "";
			return "/member/signup";
		} else {
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

	@ResponseBody
	@GetMapping("/searchIdCheckEmail")
	public int checkUsernameEmail(@RequestParam String users_name, @RequestParam String users_email) {
		return memberService.checkUsernameEmail(users_name, users_email);
	}
	
	@PostMapping("/findId")
	public String findId(String users_name, String users_email, Model model) {
		String users_id = memberService.findId(users_name, users_email);
		model.addAttribute("users_id", users_id);
		return "/member/searchIdComplete";
	}
	
	@ResponseBody
	@GetMapping("/checkIdEmail")
	public int checkUserIdEmail(@RequestParam String users_id, @RequestParam String users_email) {
		return memberService.checkUserIdEmail(users_id, users_email);
	}
	
	@GetMapping("/searchPw")
	public String searchPw() {
		return "/member/searchPw";
	}

	@PostMapping("/changePw")
	public String changePw(String users_id, String users_email, Model model) {
		int users_no = memberService.findNoforPwChange(users_id, users_email);
		model.addAttribute("users_no", users_no);
		return "/member/changePw";
	}

	@PostMapping("/searchPwComplete")
	public String changePw(String users_pw, int users_no) {
		memberService.updatePw(users_pw, users_no);
		return "/member/searchPwComplete";
	}
	
}
