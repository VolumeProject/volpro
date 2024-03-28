package com.volume.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.volume.domain.UsersVo;

@Mapper
public interface MypageMapper {

	// 마이페이지 메인
	UsersVo findUser(String users_id);
	void infoEdit(UsersVo vo);
	int checkIdPw(String users_id, String users_pw);
}

