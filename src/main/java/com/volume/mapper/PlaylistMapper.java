package com.volume.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.volume.domain.PlaylistVo;

@Mapper
public interface PlaylistMapper {

	public List<PlaylistVo> getlist(); // 플리검색
}
