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
	
	public String checkIdPw(UsersVo vo) {
		return mypageMapper.checkIdPw(vo);
	}
	
	public int countId(final String users_id) {
		return mypageMapper.countId(users_id);
	}
	
	public int countNickname(final String users_nickname) {
		return mypageMapper.countNickname(users_nickname);
	}
	
	public void updatePersonal(UsersVo vo) {
		mypageMapper.updatePersonal(vo);
		return;
	}
	
	public void updatePw(UsersVo vo) {
		mypageMapper.updatePw(vo);
		return;
	}
	
	public void withdraw(UsersVo vo) {
		mypageMapper.withdraw(vo);
		return;
	}
	
	
	
}

