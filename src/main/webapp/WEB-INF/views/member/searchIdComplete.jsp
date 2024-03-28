<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<link href="/resources/css/member/join.css" rel='stylesheet'>

<div class="container" style="background:#1c1c1c;">
		<div class="container-fluid">
			<div class="page-title">
				<h1>COMPLETE</h1>
			</div>
		</div>
		<div class="complete-msg">
			<span>IDは${users_id }です。</span>
			<p>もう一度ログインしてください。</p>
		</div>
		<div class="btn-join-container">
			<button type="submit" class="btn-share" onclick="redirectToURL('/member/login')">ログイン</button>
		</div>
</div>


<script>
    
    function redirectToURL(url) {
        window.location.href = url;
    }
	
</script>

<%@ include file="../footer.jsp"%>