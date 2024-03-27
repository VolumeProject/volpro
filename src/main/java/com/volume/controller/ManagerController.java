package com.volume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.volume.domain.MusicVo;
import com.volume.service.ManagerService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/manager")
@RequiredArgsConstructor
public class ManagerController {
	
	private final ManagerService mService;


	@GetMapping("/stats")
	public String managermain() { 
		return "/manager/managerStats";
	}
	
	@GetMapping("/user")
	public String userManagement() {
		return "/manager/managerUser";
	}
	
	@GetMapping("/payment")
	public String paymentManagement() {
		return "/manager/managerPayment";
	}
	
	@GetMapping("/music")
	public String musicManagement() {
		return "/manager/managerMusic";
	}
	
	@GetMapping("/regist")
	public String musicRegist() {
		return "/manager/managerMusicRegist";
	}
	
	@PostMapping("/register")
	public String musicRegister(MusicVo mv) {
		mService.registMusic(mv);
		return "redirect:/manager/music";
	}
	
	@GetMapping("/modify")
	public String musicModify() {
		return "/manager/managerMusicModify";
	}
	
	@GetMapping("/notice")
	public String notice() {
		return "/manager/managerNotice";
	}
	
	@GetMapping("/qna")
	public String qna() {
		return "/manager/managerQna";
	}
}
