package com.volume.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.volume.domain.MusicVo;
import com.volume.domain.TagVo;
import com.volume.domain.UpperVo;
import com.volume.service.UpperService;
import com.volume.service.YoutubeService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/upper")
@RequiredArgsConstructor
public class UpperController {

	private final UpperService upservice;
	private final YoutubeService youservice;
	
	@GetMapping("/")
	public String upper() {
		return "/upper/upper";
	}
	
	@PostMapping("/insert")
	public String insert(@RequestParam("user_name") String name, UpperVo uv) {
		upservice.insert(uv);
		upservice.inserttag(uv, name);
		/* upservice.insertlist(); */
		return "redirect:/upper/";
	}
	
	@GetMapping("/upperregist")
	public String upperregist(Model model) {
		List<MusicVo> list = youservice.getMusicList();
		List<TagVo> taglist = upservice.taglist(); 
		model.addAttribute("list", list);
		model.addAttribute("taglist", taglist); 
		return "/upper/upperRegist";
	}
	
	@GetMapping("/upperdetail")
	public String upperdetail() {
		return "/upper/upperDetail";
	}
}
