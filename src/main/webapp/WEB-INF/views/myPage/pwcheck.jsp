<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link href="/resources/css/mypage/pwCheck.css" rel='stylesheet'>

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
					<li role="presentation"><a href="#" class="pf-wd">会員退会</a></li>
				</ul>
			</div>
			<div class="pro-info col-lg-9">
				<h1>現在のパスワード確認</h1>
				<div class="edit-form">
					<form name="pwCheck" method="post" action="/mypage/changePw">
					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
					<input type="hidden" name="users_id" id="users_id" value="${principal.username}" />
						<div class="pwcheck">
							<label for="users_pw" style="margin-right: 40px;">現在のパスワード</label>
							<input type="password" name="users_pw" class="pwck" id="users_pw">
						</div>
					</form>
					<div class="check-btn">
						<button name="ck" id="ck" class="btn-ok">次へ</button>&nbsp;&nbsp;
					</div>
				</div>
			</div>
		</div>
	</div>

<script>

	var checkIdPw = "";
	
	var token = $("meta[name='_csrf']").attr("content"); //메타 태그중에 이름이 _csrf인것 중 속성이 content인것
	var header = $("meta[name='_csrf_header']").attr("content"); //메타 태그중에 이름이 _csrf_header인것
	
	//이메일 전송 및 AJAX 요청 처리
	$(function() {
		
		$("#ck").on("click", function() {
			
			var users_id = document.getElementById("users_id").value;
	        var users_pw = document.getElementById("users_pw").value;
			
			var formData = {
			    	users_id: users_id,
			        users_pw: users_pw
			};
			
			$.ajax({
	            type:'post', //비동기식 데이터 전송방식 
	            url:'/mypage/pwcheckCount', // 서버에게 보내는 url 주소
	            data: formData,
		        beforeSend: function(xhr) { // csrf 사용시 헤더에 토큰불러와서 같이보냄
           			xhr.setRequestHeader(header, token);
           		},
	            success:function(data) {  // 비동기식 데이터 처리가 성공했을때
	               if(data > 0){
	            	  $("form[name='pwCheck']").submit(); 
	               }else{
	                  alert("비밀번호가 일치하지 않습니다.");
	                  return false;
	                }
	             }, error:function(xhr,status,error) {
	                alert("통신에러!");
	             }
	        });
			
		}); // onclick end
		
	});		

</script>




<%@ include file="../footer.jsp" %>