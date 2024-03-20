package com.volume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/volume")
public class MainController {

	@GetMapping("/")
	public String main() {
		return "/index";
	}
	
	@GetMapping("/search")
	public String search() {
		return "/search/search";
	}
	
	@GetMapping("/upper")
	public String upper() {
		return "/upper/upper";
	}
	
	@GetMapping("/upperdetail")
	public String upperdetail() {
		return "/upper/upperDetail";
	}
	
	@GetMapping("/playlistdetail")
	public String playlistdetail() {
		return "/playlist/playlistDetail";
	}
	
	@GetMapping("/upperregist")
	public String upperregist() {
		return "/upper/upperRegist";
	}
	
}
