package com.volume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manager")
public class ManagerController {


	@GetMapping("/")
	public String managermain() { 
		return "/manager/manager";
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
}
