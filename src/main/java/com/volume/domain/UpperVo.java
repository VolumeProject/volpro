package com.volume.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UpperVo {

	private int upper_no;
	private String upper_title;
	private String upper_nickname;
	private String upper_comment;
	private String upper_picture;
	private int upper_like;
	private Date upper_regdate;
	
	private UpperTagVo utv;
	private UpperListVo ulv;
}
