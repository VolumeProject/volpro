<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<link href="/resources/css/member/searchId.css" rel='stylesheet'>

<div class="container-fluid">
	<div class="page-title">
		<h1>SEARCHID</h1>
	</div>
</div>

<div class="container-login">
	<form name="loginForm" id="loginForm" class="loginForm" method="post" action="/member/findId">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
		<div class="input-group">
			<label for="users_name">이름</label>
			<input type="text" name="users_name" id="users_name" placeholder="이름을 입력해 주세요" />
		</div>
		<div class="input-group">
			<label for="users_email">이메일</label>
			<input type="text" name="users_email" id="users_email" placeholder="이메일" />
			<button type="button" class="btn-email" id="btn-email">인증전송</button>
		</div>
		<div class="input-group">
			<label for="emailcheck">이메일 인증</label>
			<input type="text" name="emailcheck" id="emailcheck" placeholder="인증번호 입력" />
		</div>
		<div class="checkemail" style="margin-left:200px; color:white;"><span>인증번호를 입력해주세요.</span></div>
		<div class="btn-login-container">
			<button type="submit" class="btn-share">아이디 찾기</button>
		</div>
	</form>
</div>

<script>

	var checkIdEmail = "";

	//이메일 전송 및 AJAX 요청 처리
	$(function() {
		$("#btn-email").on("click", function() {
			var regEmail=/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[a-zA-Z0-9\-]+/;
			if(!regEmail.test($("#users_email").val())){
				alert("이메일 주소가 유효하지 않습니다");
				$("#users_email").focus();
				return false;
			}
			var users_name=$("#users_name").val();
			var users_email=$("#users_email").val();
			
			$.ajax({
	            type:'get', //비동기식 데이터 전송방식 // post이니 토큰 같이 넘겨줘야함
	            url:'/member/searchIdCheckEmail', // 서버에게 보내는 url 주소
	            data:{
	            	users_name:$("#users_name").val(),
	            	users_email:$("#users_email").val(),
	            }, // 서버에게 보내는 데이터
	            success:function(data) {  // 비동기식 데이터 처리가 성공했을때
	               if(data > 0){
	                	 checkIdEmail = "ok";
	               }else{
	                  alert("가입정보가 일치하지 않습니다.");
	                  return false;
	                }
	             }, error:function(xhr,status,error) {
	                alert("통신에러!");
	             }
	          });
			
			if(checkIdEmail === "ok"){
				$.ajax({
					type:'get',
					url:"/member/mail?mail="+users_email,
					success:function(data){
						alert("메일전송 완료");
						code = data; // checkIncode 넘어온값
					}
				}); //ajax end
			}
		}); // onclick end
			
		// 이메일 인증번호 확인
		$("#emailcheck").on("input", function() {
		    var inputCode = $(this).val();
		    if (code === inputCode) {
		    	$(".checkemail span").css("color", "green").text("인증성공");
		        authCheck = true;
		    } else {
		    	$(".checkemail span").css("color", "red").text("인증번호를 확인해주세요");
		        authCheck = false;
		    }
		});
		
	});		
	

</script>

<%@ include file="../footer.jsp"%>