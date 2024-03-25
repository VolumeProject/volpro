package com.volume.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.api.services.youtube.model.SearchResult;
import com.volume.service.YoutubeService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/youtube")
public class YoutubeController {

	 private final YoutubeService youtubeService;

		/*
		 * @GetMapping public String searchVideo(@RequestParam String keyword, Model
		 * model) throws IOException { // YoutubeService를 통해 동영상 검색한 결과를 받아옴
		 * List<String> list = youtubeService.searchVideo(keyword);
		 * model.addAttribute("list", list); return "/test/test1";
		 * 
		 * }
		 */
	 
	 @GetMapping("/")
	    public String home(@RequestParam("search") String query, Model model) {
	        try {
	        	System.out.println(query);
	            model.addAttribute("videos", youtubeService.searchVideo(query));
	        } catch (IOException e) {
	            // 예외 처리
	            e.printStackTrace();
	        }
	        return "/test/test1"; // 이동할 jsp 파일 이름
	    }
}
