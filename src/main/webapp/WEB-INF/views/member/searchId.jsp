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
	<form name="loginForm" id="loginForm" method="get" class="loginForm" action="/member/searchIdComplete">
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
			<button type="submit" class="btn-share">아이디 찾기</button>
		</div>
	</form>
</div>

<script>

	//이메일 전송 및 AJAX 요청 처리
	$(function() {
		$("#btn-email").on("click", function() {
			
			var regEmail=/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[a-zA-Z0-9\-]+/;
			if(!regEmail.test($("#email").val())){
				alert("이메일 주소가 유효하지 않습니다");
				$("#email").focus();
				return false;
			}
			var email=$("#email").val();
			
			//////////////////////////////////////////
			$.ajax({
				type:'post',
				url:"/member/mail?mail="+email,
				success:function(data){
					alert("메일전송 완료");
					code = data; // checkIncode 넘어온값
					$("#checkNum").removeAttr("disabled");
					$("#checkNum").css("background", "#fff");					
				}
			});
			
			$.ajax({
				type:'get',
				url:"/member/mail?mail="+email,
				success:function(data){
					alert("메일전송 완료");
					code = data; // checkIncode 넘어온값
					$("#checkNum").removeAttr("disabled");
					$("#checkNum").css("background", "#fff");					
				}
			}); //ajax end
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
	
	var checkIdCheck = ""; // 아이디 중복 확인
	
	/* 자바스크립트 */
	function checkLoginId() {
		const form = document.getElementById("member"); /* form태그 전체요소를 불러옴 */
		form.username.readOnly = false; /* const let var */
		const username = document.querySelector('#member input[name="username"]'); /* #하위선택자를 이용해서 불러옴 제이쿼리로하면 $("'#member input[name="username"]'") */
		const count = getJson('/member-count', {username : username.value});
		
		
		
		if(count > 0) {
			alert("이미 가입된 아이디가 있습니다.");
			username.focus();
			return false;
		}
		if($("#id").val() === '') {
  			alert("아이디를 입력해주세요");
  			$("#id").focus();
  			return false;
  		}
		if(confirm("사용 가능한 아이디 입니다.\n입력하신 아이디 사용하시겠습니까")) { /* 경고창 예true 아니요false 선택 */
			username.readOnly = true;
			document.getElementById("idCheckBtn").disabled = true;
			checkIdCheck = "ok";
		}
		
	}
	
	function getJson(uri, params) { /* 자바스크립트는 매개변수에 데이터타입을 안쓰고 타입이 자동으로 결정 */
		let json = {};
		$.ajax({
			url:uri,
			type:'get',
			data:params,
			dataType:'json', /* 받아오는 데이터 타입 */
			async: false,
			success:function(response) { /* response이름은 아무거나 가능 ex)data */
				json = response;
				alert(json);
			},error:function() {
				alert("통신에러");
			}
		})
		return json;
	}

</script>

<%@ include file="../footer.jsp"%>