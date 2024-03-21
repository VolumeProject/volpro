package com.volume.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.volume.domain.UsersVo;

@Mapper
public interface MemberMapper {

	
	void signUp(UsersVo vo); // 회원가입 - 유저정보 insert
	
}
