<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<link href="/resources/css/member/searchId.css" rel='stylesheet'>

<div class="container-fluid">
	<div class="page-title">
		<h1>CHANGEPW</h1>
	</div>
</div>

<div class="container-login">
	<form name="loginForm" id="loginForm" method="get" class="loginForm" action="/member/searchPwComplete">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
		<div class="input-group">
			<label for="username">변경할 비밀번호</label>
			<input type="text" name="username" id="username" placeholder="이름을 입력해 주세요" />
		</div>
		<div class="check"><span>인증 일치여부</span></div>
		<div class="input-group">
			<label for="email">비밀번호 확인</label>
			<input type="text" name="email" id="email" placeholder="이메일" />
			<button type="button" class="btn-share">인증전송</button>
		</div>
		<div class="check"><span>인증 일치여부</span></div>
		<div class="btn-login-container">
			<button type="submit" class="btn-share">비밀번호 변경</button>
		</div>
	</form>
</div>


<%@ include file="../footer.jsp"%>