package com.volume.service;

import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.volume.domain.UsersVo;
import com.volume.mapper.MemberMapper;

import lombok.Builder;
import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor
@Builder
public class MyUserDetailsService implements UserDetailsService { // 1. 회원정보를 가져오는 인터페이스
	// 로그인시 자동으로 연결
	private final MemberMapper memberMapper;
	
	@Override
	// 2. 회원정보 담는 인터페이스 - 3.이걸 구현한 클래스가 user클래스
	public UserDetails loadUserByUsername(String users_id) throws UsernameNotFoundException {
		// 1. 회원 정보 및 비밀번호 조회
		UsersVo member = memberMapper.findByLoginId(users_id);
		// String encodedPassword = member == null ? "" : member.getPassword();
		if(member == null) {
			throw new UsernameNotFoundException(users_id);
		}
		
		// builder 함수로 객체생성
		return User.builder()
				.username(member.getUsers_id()) // 멤버변수.(가져오는 값)
				.password(member.getUsers_pw())
				.build();
				/* User UserDetails를 구현하는 클래스 */
				// user 클래스에 담아 UserDetails 타입으로 리턴
	}
	
}
