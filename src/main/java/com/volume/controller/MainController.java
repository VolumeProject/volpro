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
		return "/search";
	}
	
	@GetMapping("/upper")
	public String upper() {
		return "/upper";
	}
	
	@GetMapping("/upperdetail")
	public String upperdetail() {
		return "/upperDetail";
	}
	
	@GetMapping("/playlistdetail")
	public String playlistdetail() {
		return "/playlistDetail";
	}

}
