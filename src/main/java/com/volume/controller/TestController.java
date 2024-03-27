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
	
	@GetMapping("/test/mp/info/pwcheck")
	public String testpwcheck() {
		return "/myPage/pwcheck";
	}
	
	@GetMapping("/test/mp/info/personal/edit")
	public String testPersonalEdit() {
		return "/myPage/personalEdit";
	}
	
	@GetMapping("/test/mp/info/personal/pwchange")
	public String testpwchange() {
		return "/myPage/changePassword";
	}
	
	@GetMapping("/test/mp/info/personal/wdpw")
	public String testwd() {
		return "/myPage/wdpwcheck";
	}

	@GetMapping("/test/mp/info/personal/wd")
	public String testwithdraw() {
		return "/myPage/withdraw";
	}
	
	@GetMapping("/test/util")
	public String testutil() {
		return "/util_presen";
	}
	
	@GetMapping("/test/mp/info/follow")
	public String testfollow() {
		return "/myPage/follow";
	}
}
