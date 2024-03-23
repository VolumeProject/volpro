package com.volume.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.volume.domain.GenreVo;
import com.volume.domain.UsersVo;

@Mapper
public interface MemberMapper {

	
	void signUp(UsersVo vo); // 회원가입 - 유저정보 insert
	List<GenreVo> getGenre(); // 장르 가져오기
	void preferInsert(int genre_no); // 선호장르 등록
	
}
