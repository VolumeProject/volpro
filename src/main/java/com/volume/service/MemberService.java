package com.volume.service;

import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.volume.domain.GenreVo;
import com.volume.domain.UsersVo;
import com.volume.mapper.MemberMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberService {
	
	private final MemberMapper memberMapper;
	private final PasswordEncoder passwordEncoder;
	
	public void signUp(UsersVo vo) {
		vo.setUsers_pw((passwordEncoder.encode(vo.getUsers_pw())));
		memberMapper.signUp(vo);
	}
	
	public List<GenreVo> getGenre() {
		return memberMapper.getGenre();
	}

	public void preperInsert(int genre_no, String users_id) {
		int users_no = memberMapper.getUserNoFromId(users_id);
		memberMapper.preferInsert(genre_no, users_no);
	}
	
	//@Transactional 조회만 할거라 안써도 됨 
	public UsersVo findMemberByLoginId(final String id, final String password) {
		// 1. 회원 정보 및 비밀번호 조회
		UsersVo member = memberMapper.findByLoginId(id);
		String encodedPassword = (member == null) ? "" : member.getUsers_pw();
		System.out.println("----------"+encodedPassword);
		// 2. 회원 정보 및 비밀번호 체크
		if(member == null || passwordEncoder.matches(password, encodedPassword) == false) { // 같은지 비교
			return null;
		}
		// 3. 회원 응갑 객체에서 비밀번호를 제거한 수 회원 정보 리턴
		return member;
	}
	
	public int countMemberByLoginId(final String users_id) {
		return memberMapper.countByLoginId(users_id);
	}
	
	public int countByName(final String username) {
		return memberMapper.countByLoginId(username);
	}
	
	public int checkUsernameEmail(String users_name, String users_email) {
		return memberMapper.checkUsernameEmail(users_name, users_email);
	}
	
	public String findId(String users_name, String users_email) {
		return memberMapper.findId(users_name, users_email);
	}
	
	public int checkUserIdEmail(String users_id, String users_email) {
		return memberMapper.checkUserIdEmail(users_id, users_email);
	}
	
	public int findNoforPwChange(String users_id, String users_email) {
		return memberMapper.findNoforPwChange(users_id, users_email);
	}
	
	public void updatePw(String users_pw, int users_no) {
		users_pw = passwordEncoder.encode(users_pw);
		memberMapper.updatePw(users_pw, users_no);
	}
	
}
