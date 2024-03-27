<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<link href="/resources/css/member/login.css" rel='stylesheet'>

<div class="container-fluid">
	<div class="page-title">
		<h1>LOGIN</h1>
	</div>
</div>

<div class="container-login">
	<form name="loginForm" id="loginForm" method="post" class="loginForm" action="/member/login">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
		<div class="input-group">
			<label for="users_id">아이디</label>
			<input type="text" name="users_id" id="users_id" placeholder="아이디를 입력해 주세요" />
		</div>
		<div class="input-group">
			<label for="users_pw">비밀번호</label>
			<input type="password" name="users_pw" id="users_pw" placeholder="비밀번호를 입력해 주세요" />
		</div>
		<div class="btn-login-container">
			<button type="submit" class="btn-share" onclick="submitLoginForm()">로그인</button>
		</div>
		<div class="btn-login-container">
			<a class="btn_login btn_Blue" href="/member/searchId">아이디&nbsp;&nbsp;/</a>
			<a class="btn_login btn_Blue" href="/member/searchPw">비밀번호찾기&nbsp;</a>
			<a class="btn_login btn_Blue" href="/member/join">&nbsp;&nbsp;회원가입&nbsp;&nbsp;</a>
		</div>
	</form>
</div>

<script>

	function submitLoginForm() {
		var form = document.getElementById("loginForm");
		form.submit();
	}

</script>


<%@ include file="../footer.jsp"%>