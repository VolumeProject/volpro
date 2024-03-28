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
			<label for="users_id">ユーザーID</label>
			<input type="text" name="users_id" id="users_id" placeholder="ID" />
		</div>
		<div class="input-group">
			<label for="users_pw">パスワード</label>
			<input type="password" name="users_pw" id="users_pw" placeholder="パスワード" />
		</div>
		<div class="btn-login-container">
			<button type="submit" class="btn-share" onclick="submitLoginForm()">ログイン</button>
		</div>
		<div class="btn-login-container">
			<a class="btn_login btn_Blue" href="/member/searchId">ユーザーID&nbsp;&nbsp;/</a>
			<a class="btn_login btn_Blue" href="/member/searchPw">パスワード検索&nbsp;</a>
			<a class="btn_login btn_Blue" href="/member/join">&nbsp;&nbsp;会員加入&nbsp;&nbsp;</a>
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