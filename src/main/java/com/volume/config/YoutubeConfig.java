package com.volume.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;


@Component
public class YoutubeConfig {

	 @Value("${youtube.api.key}")
	    private String apiKey;

	    // apiKey를 사용하는 메서드 등
}
