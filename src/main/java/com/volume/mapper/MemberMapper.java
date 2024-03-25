package com.volume.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.volume.domain.GenreVo;
import com.volume.domain.UsersVo;

@Mapper
public interface MemberMapper {

	
	void signUp(UsersVo vo); // 회원가입 - 유저정보 insert
	List<GenreVo> getGenre(); // 장르 가져오기
	int getUserNoFromId(String users_id);  // 유저아이디로 번호 가져오기
	void preferInsert(int genre_no, int users_no); // 선호장르 등록
	
	// 로그인
	UsersVo findByLoginId(String users_id); // 로그인할때 아이디 있는지 찾기
	int countByLoginId(String users_id); // 아이디 카운팅해서 중복아이디 체크 0/1
	
	// 아이디 찾기
	int countByName(String users_name);
}
