package com.volume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

	@GetMapping("/test1")
	public String test1() {
		return "/test/test1";
	}
	
	@GetMapping("/test/mp/info")
	public String testInfo() {
		return "/myPage/info";
	}
	
	@GetMapping("/test/mp/info/edit")
	public String testInfoEdit() {
		return "/myPage/infoEdit";
	}
	
	@GetMapping("/test/mp/info/personal")
	public String testpersonal() {
		return "/myPage/personal";
	}
	 
}
