package com.volume.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.volume.domain.TagVo;
import com.volume.domain.UpperTagVo;
import com.volume.domain.UpperVo;
import com.volume.mapper.TagGenreMapper;
import com.volume.mapper.UpperMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UpperService {

	private final UpperMapper uppermapper;
	private final TagGenreMapper tgmapper;
	
	public void insert(UpperVo uv) {
		uppermapper.insert(uv);
	}
	
	
	public void inserttag(UpperVo uv, String name) { 
		uppermapper.inserttag(uv,name); 
	}
	 
	
	/*
	 * public void insertlist() { uppermapper.insertlist(); }
	 */
	
	
	public List<TagVo> taglist() { 
		List<TagVo> list = tgmapper.taglist(); 
		return list;
	}
	 
}
