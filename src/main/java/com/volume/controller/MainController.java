package com.volume.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.volume.domain.MusicVo;
import com.volume.domain.PlaylistVo;
import com.volume.service.PlaylistService;
import com.volume.service.YoutubeService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/volume")
public class MainController {
	
	private final YoutubeService yService;
	private final PlaylistService playService;

	@GetMapping("/")
	public String main(Model model) {
		List<MusicVo> list = yService.getMusicList();
		List<PlaylistVo> playlist = playService.getlist();
		model.addAttribute("list", list);
		model.addAttribute("playlist", playlist);
		return "/index";
	}
	
	@GetMapping("/search")
	public String search() {
		return "/search/search";
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
	
	@GetMapping("/playlist")
	public String playlist() {
		return "/playlist/playlist";
	}
	
	@GetMapping("/chart")
	public String chart() {
		return "/chart/chart";
	}
	
	@GetMapping("/musicdetail")
	public String musicdetail() {
		return "/music/musicDetail";
	}
}
