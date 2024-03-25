<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<link href="/resources/css/member/join.css" rel='stylesheet'>

<div class="container" style="background:#1c1c1c;">
	<%-- <div class="page" id="page1">
		<div class="container-fluid">
			<div class="page-title">
				<h1>約款</h1>
			</div>
		</div>
		
		<div class="container-terms">
			<div class="term">
				<textarea class="termsForm" id="termsForm1" rows="6" cols="50">
第1条（目的） この約款は、企業（電子商取引事業者）が運営する企業サイバーモール（以下「モール」という）が提供するインターネット関連サービス（以下「サービス」という）を利用するにあたって、サイバーモールと利用者の権利·義務および責任事項を規定することを目的とします。

※「パソコン通信、無線等を利用する電子商取引についても、その性質に反しない限り、本約款を準用します。」

第2条（定義）

① 「モール」とは、業者が財貨またはサービス(以下「財貨等」という)を利用者に提供するために、コンピュータなどの情報通信設備を利用して財貨等を取引できるように設定した仮想の営業場のことで、あわせてサイバーモールを運営する事業者の意味でも使用します。

② 「利用者」とは、「モール」にアクセスし、本約款に従って「モール」が提供するサービスを受ける会員及び非会員のことです。
				</textarea>
				<div class="agreebox">
					<input type="checkbox" class="checkbox" id="checkbox1"> <span
						class="essential">(必修)約款に同意します。</span>
				</div>
			</div>
			<div class="term">
				<textarea class="termsForm" id="termsForm2" rows="6" cols="50">
個人情報処理方針

[順番]
1. 総則
2. 個人情報の収集に関する同意
3. 個人情報の収集及び利用目的
4. 収集する個人情報項目
5. 個人情報自動収集装置の設置、運営及びその拒否に関する事項
6. 目的外使用及び第三者への提供
				</textarea>
				<div class="agreebox">
					<input type="checkbox" class="checkbox" id="checkbox2"> <span
						class="essential">(必修)約款に同意します。</span>
				</div>
			</div>
			<div class="term">
				<textarea class="termsForm" id="termsForm3" rows="6" cols="50">
収集する個人情報の選択項目
居住地域

個人情報の保有及び利用期間
最終ログイン後2年経過時、または情報主体の会員退会申請時

同意拒否権利事実及び不利益内容
利用者は同意を拒否する権利があります。 選択事項に同意しなくても会員登録が可能です。
		       	</textarea>
				<div class="agreebox">
					<input type="checkbox" class="checkbox" id="checkbox3"> <span
						class="essential">(選択)約款に同意します</span>
				</div>
			</div>
			<label><input type="checkbox" id="checkAll"> 全部同意</label>
		</div>
		<div class="btn-join-container">
			<button type="submit" class="btn-share" onclick="nextPage()">次に</button>
		</div>
	</div>

	<div class="page" id="page2">
		<div class="container-fluid">
			<div class="page-title">
				<h1>加入情報</h1>
			</div>
		</div>
		
		<div class="container-join">
			<form name="joinForm" id="joinForm" method="post" class="joinForm">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<div class="input-group">
					<label for="users_id">ユーザーID</label>
					<input type="text" name="users_id" id="users_id" placeholder="ユーザーID" />
					<br><p id="idmsg" style="margin:0 0;"></p>
				</div>
				<div class="input-group">
					<label for="users_pw">パスワード</label>
					<input type="password" name="users_pw" id="password" placeholder="パスワード" />
					<span> 英字、数字の組み合わせ</span>
				</div>
				<div class="password-strength" id="password-strength">보안 강도: <span id="strength-text">약함</span></div>
				<div class="input-group">
					<label for="passwordcheck">パスワード確認</label>
					<input type="password" name="passwordcheck" id="passwordcheck" placeholder="パスワード確認" />
					<div id="password-match" class="match-text">비밀번호 일치 확인</div>
				</div>
				<div class="input-group">
					<label for="users_name">名前</label>
					<input type="text" name="users_name" id="username" placeholder="이름" />
				</div>
				<div class="input-group">
					<label for="users_phone">휴대전화</label>
					<input type="text" name="users_phone" id="phone" placeholder="휴대전화" />
				</div>
				<div class="input-group">
					<label for="users_nickname">닉네임</label>
					<input type="text" name="users_nickname" id="nickname" placeholder="닉네임" />
				</div>
				<div class="input-group">
					<label for="users_email">이메일</label>
					<input type="text" name="users_email" id="email" placeholder="이메일" />
					<button type="button" class="btn-email" id="btn-email">인증전송</button>
				</div>
				<div class="input-group">
					<label for="emailcheck">이메일 인증</label>
					<input type="text" name="emailcheck" id="emailcheck" placeholder="인증번호 입력" />
				</div>
				<div class="checkemail"><span>인증번호를 입력해주세요.</span></div>
			</form>
		</div>
		<div class="btn-join-container">
			<button class="btn-share" onclick="prevPage()">이전으로</button>
			<button class="btn-share" onclick="nextPage()">다음으로</button> 
		</div>
	</div>   --%>
	<div class="page" id="page3">
		<div class="container-fluid">
			<div class="page-title">
				<h1>PREFER</h1>
			</div>
		</div>
		<div class="container-prefer">
        <div id="genreSelection3">
            <c:forEach var="item" items="${genreList}">
                <button class="selection-button" value="${item.genre_no}">${item.genre_name}</button>
            </c:forEach>
        </div>
	    </div>
	    <div class="btn-join-container">
	        <button type="submit" class="btn-share" onclick="prevPage()">이전으로</button>
	        <button type="submit" class="btn-share" onclick="nextPage()">다음으로</button>
	    </div>
	</div>
	<div class="page" id="page4">
		<div class="container-fluid">
			<div class="page-title">
				<h1>DISLIKE</h1>
			</div>
		</div>
		<div class="container-dislike">
        <div id="genreSelection4">
            <c:forEach var="item" items="${genreList}">
                <button class="selection-button" value="${item.genre_no}">${item.genre_name}</button>
            </c:forEach>
        </div>
   		</div>
	    <div class="btn-join-container">
	        <button type="submit" class="btn-share" onclick="prevPage()">이전으로</button>
	        <button type="submit" class="btn-share" onclick="nextPage()">다음으로</button>
	    </div>
	</div> 
	<div class="page" id="page5">
		<div class="container-fluid">
			<div class="page-title">
				<h1>COMPLETE</h1>
			</div>
		</div>
		<div class="complete-msg">
			<span>회원가입이 완료 되었습니다.</span>
			<p>VOLUME 회원이 되신걸 환영합니다!</p>
			<p>차트, 플레이리스트, 어퍼 등 많은 기능이 있으니</p>
			<p>많은 이용 부탁드립니다.</p>
		</div>
		<div class="btn-join-container">
			<button type="submit" class="btn-share" onclick="redirectToURL('/member/login')">로그인</button>
		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>

<script>

	var token = $("meta[name='_csrf']").attr("content"); //메타 태그중에 이름이 _csrf인것 중 속성이 content인것
	var header = $("meta[name='_csrf_header']").attr("content"); //메타 태그중에 이름이 _csrf_header인것
	
	var checkIdCheck = ""; // 아이디 중복 확인
	var checkPasswordCheck = ""; // 비밀번호 일치 확인
	
	
	// 페이지가 로드될 때 초기화
	window.onload = function() {
	    var currentPage = document.querySelector('.page');
	    currentPage.classList.add('active');
	};
	
	//메일보내기
	var code=""; // 넘어오는 인증값
	var incode="1"; // 내가 입력한 인증값

	var authCheck=false; // 인증했는지 확인하는값?
	
	// 1페이지 약관 모두동의 
	const checkAllCheckbox = document.getElementById("checkAll");
	const otherCheckboxes = document.querySelectorAll(".checkbox");

	checkAllCheckbox.addEventListener("click", function() {
	    otherCheckboxes.forEach(function(checkbox) {
	        checkbox.checked = checkAllCheckbox.checked;
	    });
	});
	
	
	// 이전 페이지
	function prevPage() {
	    var currentPage = document.querySelector('.page.active');
	    var prevPage = currentPage.previousElementSibling;
	    
		if (currentPage.id === "page3" && prevPage.id === "page2") {
			authCheck=false;
	    }
	
	    if (prevPage) {
	        currentPage.classList.remove('active');
	        prevPage.classList.remove('prev');
	        prevPage.classList.add('active');
	        currentPage.classList.add('next');
	    }
	}
	
	
	// 다음페이지
	function nextPage() {
		var currentPage = document.querySelector('.page.active');
	    var nextPage = currentPage.nextElementSibling;

	    // 1페이지 -> 2페이지
	    if (currentPage.id === "page1" && nextPage.id === "page2") {
	        var checkbox1 = document.getElementById("checkbox1");
	        var checkbox2 = document.getElementById("checkbox2");
	        if (!checkbox1.checked || !checkbox2.checked) {
	            alert("필수 항목을 모두 체크해주세요.");
	            return;
	        }
	    }
	    
	 	// 2페이지 -> 3페이지
	    if (currentPage.id === "page2" && nextPage.id === "page3") {
	    	var id = document.getElementById("users_id").value;
	        var password = document.getElementById("password").value;
	        var passwordcheck = document.getElementById("passwordcheck").value;
	        var username = document.getElementById("username").value;
	        var phone = document.getElementById("phone").value;
	        var nickname = document.getElementById("nickname").value;
	        var email = document.getElementById("email").value;
	        var emailcheck = document.getElementById("emailcheck").value;

	        // 유효성검사
	        if (id === "" || password === "" || passwordcheck === "" || username === "" || phone === "" || nickname === "" || email === "" || emailcheck === "") {
	            alert("빈 항목을 모두 입력해주세요.");
	            return; 
	        }
	        
	        // 메일인증검사
			if(authCheck !== true) {
				alert("메일인증은 필수항목 입니다");
				return;
			}
	        
			if(checkIdCheck === 'no') {
				alert("다른 아이디를 입력해주세요.");
				return;
      		}
			
			if(checkPasswordCheck === 'no') {
				alert("비밀번호 일치를 확인해주세요.");
				return;
      		}
	        
			// 2페이지 폼 제출 
			var formData = {
		    	users_id: id,
		        users_pw: password,
		        users_name: username,
		        users_phone: phone,
		        users_nickname: nickname,
		        users_email: email
		    };
		    $.ajax({
		        type: "POST",
		        url: "/member/signup", // 서버의 URL로 수정 필요
		        data: formData,
		        beforeSend: function(xhr) { // csrf 사용시 헤더에 토큰불러와서 같이보냄
           			xhr.setRequestHeader(header, token);
           		},
		        success: function() {
		        },
		    });
	    } 
	 	
	    if (nextPage) {
	        currentPage.classList.remove('active');
	        nextPage.classList.remove('next');
	        nextPage.classList.add('active');
	        currentPage.classList.add('prev');
	    }
	}
	
	// 아이디 중복체크
	$("#users_id").blur(function() {
         if(!$("#users_id").val()) {
            $("#idmsg").html("<span style='color:#f00;'>아이디는 필수 입력사항 입니다</span>");
         }else {
            $("#idmsg").html("");
         }
             
         $.ajax({
            type:'get', //비동기식 데이터 전송방식 // post이니 토큰 같이 넘겨줘야함
            url:'/member/member-count', // 서버에게 보내는 url 주소
            data:{users_id:$("#users_id").val()}, // 서버에게 보내는 데이터
           		
           	beforeSend: function(xhr) { // csrf 사용시 헤더에 토큰불러와서 같이보냄
           		xhr.setRequestHeader(header, token);
           	},
           		
            success:function(data) {  // 비동기식 데이터 처리가 성공했을때
               if(data > 0){
                  if($("#users_id").val() != "") {
                	 $("#idmsg").html("<span style='color:#f00;'>사용불가</span>");
                	 checkIdCheck = "no";
                  }
               }else{
                  if($("#users_id").val() != ""){
                	 $("#idmsg").html("<span style='color:#0f0;'>사용가능</span>");
                     checkIdCheck = "ok";
                  }
                }
             }, error:function(xhr,status,error) {
                alert("통신에러!");
             }
          })
	});
	
	// 이메일 전송 및 AJAX 요청 처리
	$(function() {
		$("#btn-email").on("click", function() {
			var regEmail=/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[a-zA-Z0-9\-]+/;
			if(!regEmail.test($("#email").val())){
				alert("이메일 주소가 유효하지 않습니다");
				$("#email").focus();
				return false;
			}
			var email=$("#email").val();
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
		    	$(".checkemail span").css("color", "#0f0").text("인증성공");
		        authCheck = true;
		    } else {
		    	$(".checkemail span").css("color", "red").text("인증번호를 확인해주세요");
		        authCheck = false;
		    }
		});
		
	});		
	
	// 비밀번호 보안강도
	const passwordInput = document.getElementById('password');
	const passwordcheckInput = document.getElementById('passwordcheck');
	const passwordStrengthText = document.getElementById('strength-text');
	const passwordMatchText = document.getElementById('password-match');

	passwordInput.addEventListener('input', function() {
	    const password = passwordInput.value;
	    const result = zxcvbn(password);

	    // 보안 강도에 따라 표시할 텍스트 및 스타일 설정
	    let strengthText;
	    let strengthColor;

	    switch (result.score) {
	        case 0:
	            strengthText = '매우 약함';
	            strengthColor = 'red';
	            break;
	        case 1:
	            strengthText = '약함';
	            strengthColor = 'orange';
	            break;
	        case 2:
	            strengthText = '보통';
	            strengthColor = 'yellow';
	            break;
	        case 3:
	            strengthText = '강함';
	            strengthColor = 'green';
	            break;
	        case 4:
	            strengthText = '매우 강함';
	            strengthColor = 'darkgreen';
	            break;
	        default:
	            strengthText = '';
	            strengthColor = '';
	    }

	    // 보안 강도 텍스트 및 스타일 업데이트
	    passwordStrengthText.textContent = strengthText;
	    passwordStrengthText.style.color = strengthColor;
	    
		 // 비밀번호 일치 여부 업데이트
	    const matchText = passwordInput.value === passwordcheckInput.value ? '일치' : '비밀번호 일치 확인';
		if(matchText === '일치') {
			checkPasswordCheck = 'ok';
		}else {
			checkPasswordCheck = 'no';
			passwordMatchText.style.color = passwordInput.value === passwordcheckInput.value ? 'red' : '';
		}
	    passwordMatchText.textContent = matchText;
	    passwordMatchText.style.color = passwordInput.value === passwordcheckInput.value ? '#0f0' : '';
	});
	
	passwordcheckInput.addEventListener('input', function() {
		// 비밀번호 일치 여부 업데이트
	    const matchText = passwordInput.value === passwordcheckInput.value ? '일치' : '비밀번호 일치 확인';
	    if(matchText === '일치') {
			checkPasswordCheck = 'ok';
		}else {
			checkPasswordCheck = 'no';
			passwordMatchText.style.color = passwordInput.value === passwordcheckInput.value ? 'red' : '';
		}
	    passwordMatchText.textContent = matchText;
	    passwordMatchText.style.color = passwordInput.value === passwordcheckInput.value ? '#0f0' : '';
	}); 
	
    function redirectToURL(url) {
        window.location.href = url;
    }
    
 	
    
	
</script>

