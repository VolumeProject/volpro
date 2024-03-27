package com.volume.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.volume.domain.MusicVo;

@Mapper
public interface YoutubeMapper {

	public void musicRegist(MusicVo mv); //음원등록
	public List<MusicVo> getMusicList(); //음원목록 불러오기
}
