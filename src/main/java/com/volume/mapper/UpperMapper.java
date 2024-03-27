package com.volume.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UpperMapper {

	public void insert(); //어퍼 등록
	public void inserttag(); //어퍼태그등록
	public void insertlist(); //어퍼리스트 등록
}
