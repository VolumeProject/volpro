package com.volume.service;

import org.springframework.stereotype.Service;

import com.volume.domain.UsersVo;
import com.volume.mapper.MemberMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberService {
	
	private final MemberMapper memberMapper;
	
	public void signUp(UsersVo vo) {
		memberMapper.signUp(vo);
	}

}
