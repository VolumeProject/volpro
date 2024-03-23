package com.volume.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.volume.domain.GenreVo;
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
	
	public List<GenreVo> getGenre() {
		return memberMapper.getGenre();
	}

	public void preperInsert(int genre_no) {
		memberMapper.preferInsert(genre_no);
	}
	
}
