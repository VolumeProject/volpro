package com.volume.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.volume.domain.TagVo;

@Mapper
public interface TagGenreMapper {
	public List<TagVo> taglist();
}
