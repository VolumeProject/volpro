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
	<form name="loginForm" id="loginForm" method="post" class="loginForm" action="/volume/member/login">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
		<div class="input-group">
			<label for="id">아이디</label>
			<input type="text" name="id" id="id" placeholder="아이디를 입력해 주세요" />
		</div>
		<div class="input-group">
			<label for="password">비밀번호</label>
			<input type="password" name="password" id="password" placeholder="비밀번호를 입력해 주세요" />
		</div>
		<div class="btn-login-container">
			<button type="submit" class="btn-share">로그인</button>
		</div>
		<div class="btn-login-container">
			<a class="btn_login btn_Blue" href="javascript:fn_login();">아이디&nbsp;&nbsp;/</a>
			<a class="btn_login btn_Blue" href="javascript:fn_login();">비밀번호찾기&nbsp;</a>
			<a class="btn_login btn_Blue" href="/member/terms">&nbsp;&nbsp;회원가입&nbsp;&nbsp;</a>
		</div>
	</form>
</div>

<%@ include file="../footer.jsp"%>