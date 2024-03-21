package com.volume.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UsersVo {
	
	private int users_no;
	private String users_id;
	private String users_pw;
	private String users_name;
	private String users_phone;
	private String users_nickname;
	private String users_email;
	private Date users_regdate;
	private String users_profile;
	private String users_introduction;
	private String users_subscriptioncount;
	
}
