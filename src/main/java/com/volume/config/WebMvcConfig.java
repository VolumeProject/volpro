package com.volume.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

	@Value("${project.uploadpath}")
	String uploadPath;
	// 이 멤버변수가 호출되면 properties의 #업로드 경로 => 실제 저장경로 project.uploadpath=file:///C:/upload 통해서 
	// file:///C:/upload로 감
	// photo가 uploadPath로 인식되게 하고싶음
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/profile/**")
		.addResourceLocations(uploadPath); // 여기이거 코드 두줄인데 한줄짜리임 윗줄 ; 없음
	}
	
}

