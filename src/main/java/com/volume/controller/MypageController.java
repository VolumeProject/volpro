package com.volume.controller;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.volume.common.FileUploadUtils;
import com.volume.domain.UserProfileVo;
import com.volume.domain.UsersVo;
import com.volume.service.MypageService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MypageController {
	
	private final MypageService mypageService;
	private final FileUploadUtils fileupoadUtils;
	private final PasswordEncoder passwordEncoder;

	// 마이페이지 메인 - 프로필 열람
	@GetMapping("/mypage")
	public String getInfo(String users_id, Model model) {
		UsersVo vo = mypageService.findUser(users_id);
		model.addAttribute("vo", vo);
		return "/myPage/info";
	}
	
	// 프로필수정 페이지 이동
	@GetMapping("/infoEdit")
	public String InfoEdit(String users_id, Model model) {
		UsersVo vo = mypageService.findUser(users_id);
		model.addAttribute("vo", vo);
		return "/myPage/infoEdit";
	}
	
	// 프로필수정 
	@PostMapping("/infoEdit")
	public String infoEdit(UsersVo vo, @RequestParam("uploadfile") MultipartFile uploadfile) {
		UserProfileVo profileVo = fileupoadUtils.uploadFiles(uploadfile);
		
		String user_profile = "";
		String uploadpath = profileVo.getUploadpath();
		String uuid = profileVo.getUuid();
		String uploadfileInVo = profileVo.getUploadfile();
		
		user_profile = "/profile/"+uploadpath+"/"+uuid+"_"+uploadfileInVo;
		// /profile/${imglist.uploadpath}/${imglist.uuid}_${imglist.uploadfile}"
		vo.setUsers_profile(user_profile);
		
		mypageService.infoEdit(vo);
		
		String end = "redirect:/mypage/mypage"+"?users_id="+vo.getUsers_id();
		
		return end;
	}
	
	// 개인정보 페이지 이동
	@GetMapping("/personal")
	public String personal(String users_id, Model model) {
		UsersVo vo = mypageService.findUser(users_id);
		model.addAttribute("vo", vo);
		return "/myPage/personal";
	}
	
	// 개인정보 수정 전 비밀번호 체크 페이지 이동
	@GetMapping("/pwcheck")
	public String pwcheck() {
		return "/myPage/pwcheck";
	}
	
	// 개인정보 수정 전 비밀번호 체크
	@ResponseBody // 파람안해도 되는 이유 찾아보기
	@PostMapping("/pwcheckCount")
	public int pwcheck(UsersVo vo) {
		String dbPw = mypageService.checkIdPw(vo);
		if(passwordEncoder.matches(vo.getUsers_pw(), dbPw)) {
			return 1;
		}
		return 0;
	}
	
	// 개인정보 수정 페이지 이동
	@PostMapping("/changePw")
	public String changePw(String users_id, Model model) {
		UsersVo vo = mypageService.findUser(users_id);
		model.addAttribute("vo", vo);
		return "/myPage/personalEdit";
	}
	
	/// 개인정보수정 아이디 중복확인
	@ResponseBody
	@GetMapping("/countId")
	public int countId(@RequestParam String users_id) {
		return mypageService.countId(users_id);
	}
	
	/// 개인정보수정 닉네임 중복확인
	@ResponseBody
	@GetMapping("/countNickname")
	public int countNickname(@RequestParam String users_nickname) {
		return mypageService.countNickname(users_nickname);
	}
	
	// 개인정보수정
	@PostMapping("/personalEdit")
	public String updatePersonal(UsersVo vo, Model model) {
		mypageService.updatePersonal(vo);
		vo = mypageService.findUser(vo.getUsers_id());
		model.addAttribute("vo", vo);
		return "/myPage/personal";
	}
	
	// 개인정보 수정 전 비밀번호 체크 페이지 이동
	@GetMapping("/changePw")
	public String changePw() {
		return "/myPage/changePassword";
	}
	
	// 개인정보수정
	@PostMapping("/updatePw")
	public String updatePw(UsersVo vo, Model model) {
		vo.setUsers_pw(passwordEncoder.encode(vo.getUsers_pw()));
		mypageService.updatePw(vo);
		UsersVo vo2 = mypageService.findUser(vo.getUsers_id());
		model.addAttribute("vo", vo2);
		return "/myPage/personal";
	}
	
	// 개인정보 수정 전 비밀번호 체크 페이지 이동
	@GetMapping("/wdPwCheck")
	public String wdPwCheck() {
		return "/myPage/wdPwCheck";
	}
	
	// 회원탈퇴
	@PostMapping("/withdraw")
	public String withdraw(UsersVo vo, Model model) {
		mypageService.withdraw(vo);
		return "/myPage/withdraw";
	}
	
}

