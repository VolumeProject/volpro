package com.volume.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.volume.domain.UpperVo;

@Mapper
public interface UpperMapper {

	public void insert(UpperVo uv); //어퍼 등록
	public void inserttag(UpperVo uv, String name); //어퍼태그등록
	/* public void insertlist(); */ //어퍼리스트 등록
}
