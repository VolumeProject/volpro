package com.volume.service;

import org.springframework.stereotype.Service;

import com.volume.mapper.UpperMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UpperService {

	private final UpperMapper uppermapper;
	
	public void insert() {
		uppermapper.insert();
	}
	
	public void inserttag() {
		uppermapper.inserttag();
	}
}
