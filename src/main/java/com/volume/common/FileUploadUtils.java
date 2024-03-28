package com.volume.common;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.volume.domain.UserProfileVo;

import lombok.extern.log4j.Log4j2;

@Component
@Log4j2
public class FileUploadUtils {

	private final String uploadFolder = Paths.get("C:", "upload").toString();
//	Paths.get 운영체제에 관계없이 디렉토리 경로를 알아서 설정해줌

//	년 월 일 폴더 생성하기 위한 날짜생성
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);
	}
	// 윈도우 OS는 폴더사이를 \로 인식 // 리눅스 OS는 폴더사이를 /로 인식
	// File.separator : "-"을 운영체제에 맞게 \/로 인식되게 해줌
	// window OS => 2024\02\15
	// linux OS => 2024/02/15

	public UserProfileVo uploadFiles(@RequestParam("file") MultipartFile uploadFile) {
		String uploadPathDate = getFolder();

		// 년 월 일 폴더 생성
		File uploadPath = new File(uploadFolder, getFolder()); // C:/upload/2024/02/15
		log.info("uploadPath => " + uploadPath);

		if (uploadPath.exists() == false) {
			uploadPath.mkdirs(); // mkdir은 상위폴더를 만들지 않는다.
		}

		// 파일 전송
		UserProfileVo vo = new UserProfileVo();

		log.info("file name : " + uploadFile.getOriginalFilename());
		String uploadOriginFileName = uploadFile.getOriginalFilename();
		// IE internet explorer
		String uploadFileName = uploadOriginFileName.substring(uploadOriginFileName.lastIndexOf("\\") + 1);
		log.info("file name : " + uploadFileName);

		UUID uuid = UUID.randomUUID();
		// 중복방지를 위한 UUID 생성 // 유일한 16진수 형식의 무작위 문자 만들기

		uploadFileName = uuid.toString() + "_" + uploadFileName;
		File savaFile = new File(uploadPath, uploadFileName);

		try {
			uploadFile.transferTo(savaFile);
			vo.setUuid(uuid.toString());
			vo.setUploadpath(uploadPathDate);
			vo.setUploadfile(uploadOriginFileName);
			vo.setFiletype(true);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
			
		return vo;
	}
}