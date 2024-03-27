package com.volume.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.volume.domain.PlaylistVo;
import com.volume.mapper.PlaylistMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PlaylistService {

	private final PlaylistMapper playMapper;
	
	public List<PlaylistVo> getlist() {
		List<PlaylistVo> list = playMapper.getlist();
		return list;
	}
}
