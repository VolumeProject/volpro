<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<link href="/resources/css/member/form.css" rel='stylesheet'>

<div class="container-fluid">
	<div class="page-title">
		<h1>JOIN</h1>
	</div>
</div>

<div class="container-join">
	<form name="joinForm" id="joinForm" method="post" class="joinForm" action="/volume/member/join">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
		<div class="input-group">
			<label for="id">아이디</label>
			<input type="text" name="id" id="id" placeholder="아이디" />
			<button type="submit" class="btn-share">중복확인</button>
		</div>
		<div class="input-group">
			<label for="password">비밀번호</label>
			<input type="password" name="password" id="password" placeholder="비밀번호" />
		</div>
		<div class="input-group">
			<label for="passwordcheck">비밀번호 확인</label>
			<input type="password" name="passwordcheck" id="passwordcheck" placeholder="비밀번호 확인" />
			<span> 비밀번호 영문숫자 조합</span>
		</div>
		<div class="input-group">
			<label for="username">이름</label>
			<input type="text" name="username" id="username" placeholder="이름" />
		</div>
		<div class="input-group">
			<label for="phone">휴대전화</label>
			<input type="text" name="phone" id="phone" placeholder="휴대전화" />
		</div>
		<div class="input-group">
			<label for="nickname">닉네임</label>
			<input type="text" name="nickname" id="nickname" placeholder="닉네임" />
		</div>
		<div class="input-group">
			<label for="email">이메일</label>
			<input type="text" name="email" id="email" placeholder="이메일" />
			<button type="submit" class="btn-share">인증전송</button>
		</div>
		<div class="input-group">
			<label for="emailcheck">이메일 인증</label>
			<input type="text" name="emailcheck" id="emailcheck" placeholder="이메일 확인" />
		</div>
	</form>
</div>
<div class="btn-join-container">
	<button type="submit" class="btn-share" onclick="prev()">이전으로</button>
	<button type="submit" class="btn-share" onclick="next()">다음으로</button>
</div>


<script>
	function prev() {
		window.location.href = "/member/terms";	    
	}
	function next() {
		window.location.href = "/member/form";	    
	}
</script>

<%@ include file="../footer.jsp"%>