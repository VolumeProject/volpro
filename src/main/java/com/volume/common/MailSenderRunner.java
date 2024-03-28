package com.volume.common;

import java.util.Date;
import java.util.Random;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Component
@RequiredArgsConstructor
@Log4j2
public class MailSenderRunner {

	private final JavaMailSender mailSender;
	
	// 프로퍼티스의 값을 가져오려면 벨류 어노테이션
	@Value("${spring.mail.username}")
	private String from;

	public String sendMail(String email) {
		
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		log.info("인증번호 : " + checkNum);

		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom(from);
		message.setTo(email);
		message.setSubject("Volumeの認証メールです。");
		String content = "認証番号は" + checkNum + "となります。" + "認証番号を認証番号確認欄に記入してください。";
		message.setText(content);
		message.setSentDate(new Date());

		mailSender.send(message);

		String num = Integer.toString(checkNum);

		return num;

	}

}
