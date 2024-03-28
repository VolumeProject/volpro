package com.volume.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.volume.domain.UsersVo;

@Mapper
public interface MypageMapper {

	// 마이페이지 프로필
	UsersVo findUser(String users_id); // 유저찾기
	void infoEdit(UsersVo vo); // 프로필 수정
	
	// 마이페이지 개인정보
	String checkIdPw(UsersVo vo); // 비밀번호 확인
	int countId(String users_id); // 아이디 카운트 중복아이디 체크 0/1 리턴
	int countNickname(String users_nickname); // 닉네임 카운트 중복닉네임 체크 0/1 리턴
	void updatePersonal(UsersVo vo);
	void updatePw(UsersVo vo);
	
	// 회원탈퇴
	void withdraw(UsersVo vo);
	
}

