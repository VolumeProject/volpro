<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<link href="/resources/css/member/changePw.css" rel='stylesheet'>

<div class="container-fluid">
	<div class="page-title">
		<h1>CHANGEPW</h1>
	</div>
</div>

<div class="container-login">
	<form name="loginForm" id="loginForm" method="post" class="loginForm" action="/member/searchPwComplete">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
		<input type="hidden" name="users_no" value="${users_no}" />
		<div class="input-group">
			<label for="users_pw">パスワード</label>
			<input type="password" name="users_pw" id="password" placeholder="パスワード" /> 
			<span>英字、数字の組み合わせ</span>
		</div>
		<div class="password-strength" id="password-strength">
			保安強度: <span id="strength-text">弱い</span>
		</div>
		<div class="input-group">
			<label for="passwordcheck">パスワード確認</label> 
			<input type="password" name="passwordcheck" id="passwordcheck" placeholder="パスワード確認" />
			<div id="password-match" class="match-text">パスワードの一致確認</div>
		</div>
		<div class="btn-login-container">
			<button type="submit" class="btn-share">パスワード変更</button>
		</div>
	</form>
</div>

<script>

	//비밀번호 보안강도
	const passwordInput = document.getElementById('password');
	const passwordcheckInput = document.getElementById('passwordcheck');
	const passwordStrengthText = document.getElementById('strength-text');
	const passwordMatchText = document.getElementById('password-match');

	passwordInput.addEventListener('input',function() {
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
		if (matchText === '一致') {
			checkPasswordCheck = 'ok';
		} else {
			checkPasswordCheck = 'no';
			passwordMatchText.style.color = passwordInput.value === passwordcheckInput.value ? 'red' : '';
		}
			passwordMatchText.textContent = matchText;
			passwordMatchText.style.color = passwordInput.value === passwordcheckInput.value ? '#0f0' : '';
		});

	passwordcheckInput.addEventListener('input', function() {
		// 비밀번호 일치 여부 업데이트
		const matchText = passwordInput.value === passwordcheckInput.value ? '一致' : 'パスワードの一致確認';
		if (matchText === '一致') {
			heckPasswordCheck = 'ok';
		} else {
			checkPasswordCheck = 'no';
			passwordMatchText.style.color = passwordInput.value === passwordcheckInput.value ? 'red' : '';
		}
		passwordMatchText.textContent = matchText;
		passwordMatchText.style.color = passwordInput.value === passwordcheckInput.value ? '#0f0' : '';
	});
	
</script>

<%@ include file="../footer.jsp"%>