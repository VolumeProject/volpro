package com.volume.service;

import org.springframework.stereotype.Service;

import com.volume.domain.UsersVo;
import com.volume.mapper.MypageMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MypageService {

	private final MypageMapper mypageMapper;
	
	public UsersVo findUser(String users_id) {
		return mypageMapper.findUser(users_id);
	}
	
	public void infoEdit(UsersVo vo) {
		mypageMapper.infoEdit(vo);
		return;
	}
	
	public int checkIdPw(String users_id, String users_pw) {
		return mypageMapper.checkIdPw(users_id, users_pw);
	}
	
	
	
	
	
	
}

