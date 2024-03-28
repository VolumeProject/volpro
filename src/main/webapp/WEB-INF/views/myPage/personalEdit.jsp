<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link href="/resources/css/mypage/personalEdit.css" rel='stylesheet'>

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
				<div class="edit-form">
					<form name="personalEdit" method="post" action="/mypage/personalEdit">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<input type="hidden" name="users_id" value="${vo.users_id}" />
						<div class="personal-edit">
							<table>
								<tr>
									<th>
										ニックネーム
									</th>
									<td>
										<input type="text" name="users_nickname" class="users_nickname" id="users_nickname" value="${vo.users_nickname}">
										<br><p id="nickmsg" style="margin:0 0; margin-right:280px;"></p>
									</td>
								</tr>
								<tr>
									<th>
										名前
									</th>
									<td>
										<input type="text" name="users_name" class="users_name" id="users_name" value="${vo.users_name}">
									</td>
								</tr>
								<tr>
									<th>
										電話番号
									</th>
									<td>
										<input type="text" name="users_phone" class="users_phone" id="users_phone" value="${vo.users_phone}">
									</td>
								</tr>
							</table>
							<span style="color:white; margin-right:140px;"> 「-」は省略</span>
						</div>
						<div class="edit-btn">
							<input type="submit" value="次へ" class="btn-ok">&nbsp;&nbsp;
							<input type="reset" value="リセット" class="btn-reset">&nbsp;&nbsp;
							<input type="button" value="パスワード変更" class="btn-pass" onclick="redirectToPasswordPage()">&nbsp;&nbsp;
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

<script>
	
	//아이디 중복체크
	$("#users_id").blur(function() {
		if(!$("#users_id").val()) {
	    	$("#idmsg").html("<span style='color:#f00;'>IDは必須入力事項です。</span>");
	    }else {
	    	$("#idmsg").html("");
	    }
	         
	    $.ajax({
	    	type:'get', //비동기식 데이터 전송방식 
	    	url:'/mypage/countId', // 서버에게 보내는 url 주소
	    	data:{users_id:$("#users_id").val()}, // 서버에게 보내는 데이터
	    	success:function(data) {  // 비동기식 데이터 처리가 성공했을때
	        	if(data > 0){
	            	if($("#users_id").val() != "") {
	           		$("#idmsg").html("<span style='color:#f00;'>使用不可</span>");
	           		checkIdCheck = "no";
	            	}
	        	}else{
	            	if($("#users_id").val() != ""){
	           		$("#idmsg").html("<span style='color:#0f0;'>使用可能</span>");
	                checkIdCheck = "ok";
	            	}
            	}
	       	}, error:function(xhr,status,error) {
	        	alert("통신에러!");
	    	}
	    })
	});
	
	//닉네임 중복체크
	$("#users_nickname").blur(function() {
	         
	    $.ajax({
	    	type:'get', //비동기식 데이터 전송방식 
	    	url:'/mypage/countNickname', // 서버에게 보내는 url 주소
	    	data:{users_nickname:$("#users_nickname").val()}, // 서버에게 보내는 데이터
	    	success:function(data) {  // 비동기식 데이터 처리가 성공했을때
	        	if(data > 0){
	            	if($("#users_nickname").val() != "") {
	           		$("#nickmsg").html("<span style='color:#f00;'>使用不可</span>");
	           		checkIdCheck = "no";
	            	}
	        	}else{
	            	if($("#users_id").val() != ""){
	           		$("#nickmsg").html("<span style='color:#0f0;'>使用可能</span>");
	                checkIdCheck = "ok";
	            	}
            	}
	       	}, error:function(xhr,status,error) {
	        	alert("통신에러!");
	    	}
	    })
	});

	function redirectToPasswordPage() {
	    window.location.href = '/mypage/changePw';
	}
	
</script>




<%@ include file="../footer.jsp" %>