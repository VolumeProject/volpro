package com.volume.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MusicVo {

	private int music_no;
	private String music_title;
	private String music_artist;
	private String music_composer;
	private String music_lyricist;
	private String music_etc;
	private String music_album;
	private String music_genre;
	private String music_lyrics;
	private String music_albumart;
	private String music_releasedate;
	private String music_regdate;
	private int music_like;
	private int music_playcount;
	private String music_uri;
	private int index_num;
}
