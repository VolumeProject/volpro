<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link href="/resources/css/mypage/pwchange.css" rel='stylesheet'>

	<div class="container">
		<div class="mp-title">
			<h1>MY PAGE</h1>
			<h2>個人情報修正</h2>
		</div>
		<div class="mp-content">
			<div class="info-sidebar col-lg-3">
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation"><p class="pf-title">プロフィル</p></li>
					<li role="presentation"><a href="/mypage/mypage?users_id=${principal.username}" class="pf-view">プロフィル閲覧</a></li>
					<li role="presentation"><a href="/mypage/infoEdit?users_id=${principal.username}" class="pf-edit">プロフィル修正</a></li>
				</ul>
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation"><p class="pf-title2">個人情報</p></li>
					<li role="presentation"><a href="/mypage/personal?users_id=${principal.username}" class="pf-view">個人情報閲覧</a></li>
					<li role="presentation"><a href="/mypage/pwcheck" class="pf-edit" style=" font-size:20px; color: #FFE716;">個人情報修正</a></li>
					<li role="presentation"><a href="/mypage/wdPwCheck" class="pf-wd">会員退会</a></li>
				</ul>
			</div>
			<div class="pro-info col-lg-9">
				<h1>パスワード変更</h1>
				<div class="edit-form">
					<form name="pwChange" method="post" action="/mypage/updatePw" onsubmit="return checkPassword()">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<input type="hidden" name="users_id" value="${principal.username}" />
						<div class="pwchange">
							<label for="users_pw">新しいパスワード</label>
							<input type="password" name="users_pw" class="newpw" id="users_pw">
							<p>英字、数字の組み合わせ</p><br>
							<div class="password-strength" id="password-strength" style="margin-right:190px; margin-top:-15px; color:white">保安強度: <span id="strength-text">弱い</span></div>
							<label for="passwordcheck">パスワード確認</label>
							<input type="password" name="passwordcheck" class="pwck" id="passwordcheck" style="margin-right: 190px;">
							<div id="password-match" class="match-text" style="margin-right:180px; margin-top:-15px; color:white">パスワードの一致確認</div>
						</div>
						<div class="change-btn">
							<input type="submit" value="変更" class="btn-ok">&nbsp;&nbsp;
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

<script>
	
	var checkPasswordCheck = ""; // 비밀번호 일치 확인
	
	// 비밀번호 보안강도
	const passwordInput = document.getElementById('users_pw');
	const passwordcheckInput = document.getElementById('passwordcheck');
	const passwordStrengthText = document.getElementById('strength-text');
	const passwordMatchText = document.getElementById('password-match');
	
	passwordInput.addEventListener('input', function() {
	    const password = passwordInput.value;
	    const result = zxcvbn(password);
	
	    // 보안 강도에 따라 표시할 텍스트 및 스타일 설정
	    let strengthText;
	    let strengthColor;
	
	    switch (result.score) {
	        case 0:
	            strengthText = '非常に弱い';
	            strengthColor = 'red';
	            break;
	        case 1:
	            strengthText = '弱い';
	            strengthColor = 'orange';
	            break;
	        case 2:
	            strengthText = '普通';
	            strengthColor = 'yellow';
	            break;
	        case 3:
	            strengthText = '強い';
	            strengthColor = 'green';
	            break;
	        case 4:
	            strengthText = '非常に強い';
	            strengthColor = 'darkgreen';
	            break;
	        default:
	            strengthText = '';
	            strengthColor = '';
	    }
	
	    // 보안 강도 텍스트 및 스타일 업데이트
	    passwordStrengthText.textContent = strengthText;
	    passwordStrengthText.style.color = strengthColor;
	    
	     // 비밀번호 일치 여부 업데이트
	    const matchText = passwordInput.value === passwordcheckInput.value ? '一致' : 'パスワードの一致確認';
	    if(matchText === '一致') {
	        checkPasswordCheck = 'ok';
	    }else {
	        checkPasswordCheck = 'no';
	        passwordMatchText.style.color = passwordInput.value === passwordcheckInput.value ? 'red' : '';
	    }
	    passwordMatchText.textContent = matchText;
	    passwordMatchText.style.color = passwordInput.value === passwordcheckInput.value ? '#0f0' : '';
	});
	
	passwordcheckInput.addEventListener('input', function() {
	    // 비밀번호 일치 여부 업데이트
	    const matchText = passwordInput.value === passwordcheckInput.value ? '一致' : 'パスワードの一致確認';
	    if(matchText === '一致') {
	        checkPasswordCheck = 'ok';
	    }else {
	        checkPasswordCheck = 'no';
	        passwordMatchText.style.color = passwordInput.value === passwordcheckInput.value ? 'red' : '';
	    }
	    passwordMatchText.textContent = matchText;
	    passwordMatchText.style.color = passwordInput.value === passwordcheckInput.value ? '#0f0' : '';
	}); 
	
	function checkPassword() {
	    // 비밀번호 일치 여부 확인
	    if (checkPasswordCheck !== 'ok') {
	        alert('パスワードが一致しません。');
	        return false;
	    }
	}
	
</script>




<%@ include file="../footer.jsp" %>