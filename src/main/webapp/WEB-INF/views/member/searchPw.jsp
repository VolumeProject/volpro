<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<link href="/resources/css/member/searchId.css" rel='stylesheet'>

<div class="container-fluid">
	<div class="page-title">
		<h1>SEARCHPW</h1>
	</div>
</div>

<div class="container-login">
	<form name="loginForm" id="loginForm" method="get" class="loginForm" action="/member/changePw">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
		<div class="input-group">
			<label for="username">이름</label>
			<input type="text" name="username" id="username" placeholder="이름을 입력해 주세요" />
		</div>
		<div class="input-group">
			<label for="email">이메일</label>
			<input type="text" name="email" id="email" placeholder="이메일" />
			<button type="button" class="btn-share">인증전송</button>
		</div>
		<div class="input-group">
			<label for="emailcheck">이메일 인증</label>
			<input type="text" name="emailcheck" id="emailcheck" placeholder="인증번호 입력" />
		</div>
		<div class="check"><span>인증 일치여부</span></div>
		<div class="btn-login-container">
			<button type="submit" class="btn-share">비밀번호 변경</button>
		</div>
	</form>
</div>


<%@ include file="../footer.jsp"%>