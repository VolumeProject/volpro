package com.volume.service;

import org.springframework.stereotype.Service;

import com.volume.domain.MusicVo;
import com.volume.mapper.YoutubeMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ManagerService {

	private final YoutubeMapper yMapper;
	
	public void registMusic(MusicVo mv) {
		yMapper.musicRegist(mv);
	}
}
