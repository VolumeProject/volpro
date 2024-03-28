package com.volume.domain;

import lombok.Data;

@Data
public class UserProfileVo {

	private String uuid;
	private String uploadpath;
	private String uploadfile;
	private boolean filetype;
	private Long bno;
	
}
