<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<link href="/resources/css/member/join.css" rel='stylesheet'>

<div class="container" style="background:#1c1c1c;">
	<div class="page" id="page1">
		<div class="container-fluid">
			<div class="page-title">
				<h1>TERMS</h1>
			</div>
		</div>
		
		<div class="container-terms">
			<div class="term">
				<textarea class="termsForm" id="termsForm1" rows="6" cols="50">
					치피치피 차파차파
				</textarea>
				<div class="agreebox">
					<input type="checkbox" class="checkbox" id="checkbox1"> <span
						class="essential">(필수) 약관에 동의합니다.</span>
				</div>
			</div>
			<div class="term">
				<textarea class="termsForm" id="termsForm2" rows="6" cols="50">
					치피치피 차파차파
				</textarea>
				<div class="agreebox">
					<input type="checkbox" class="checkbox" id="checkbox2"> <span
						class="essential">(필수) 약관에 동의합니다.</span>
				</div>
			</div>
			<div class="term">
				<textarea class="termsForm" id="termsForm3" rows="6" cols="50">
		       		선택 약관 내용
		       	</textarea>
				<div class="agreebox">
					<input type="checkbox" class="checkbox" id="checkbox3"> <span
						class="essential">(선택) 약관에 동의합니다.</span>
				</div>
			</div>
			<label><input type="checkbox" id="checkAll"> 모두 동의</label>
		</div>
		<div class="btn-join-container">
			<button type="submit" class="btn-share" onclick="nextPage()">다음으로</button>
		</div>
	</div>

	<div class="page" id="page2">
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
			<button type="submit" class="btn-share" onclick="prevPage()">이전으로</button>
			<button type="submit" class="btn-share" onclick="nextPage()">다음으로</button>
		</div>
	</div>
	<div class="page" id="page3">
		<div class="container-fluid">
			<div class="page-title">
				<h1>PREPER</h1>
			</div>
		</div>
		
		<div class="container-preper">
			<div id="genreSelection3">
				<button class="selection-button">Button 1</button>
				<button class="selection-button">Button 2</button>
				<button class="selection-button">Button 3</button>
				<button class="selection-button">Button 4</button>
				<button class="selection-button">Button 5</button>
				<button class="selection-button">Button 6</button>
				<button class="selection-button">Button 7</button>
				<button class="selection-button">Button 8</button>
				<button class="selection-button">Button 9</button>
				<button class="selection-button">Button 10</button>
				<button class="selection-button">Button 11</button>
				<button class="selection-button">Button 12</button>
				<!-- 필요한 만큼 장르 버튼을 추가할 수 있습니다 -->
			</div>
			<form id="genreForm" action="processGenres.jsp" method="post">
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
				<input type="hidden" name="selectedGenres" id="selectedGenres" value="">
				<!-- 선택된 장르들을 전송하기 위한 hidden input -->
			</form>
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
				<button class="selection-button">Button 1</button>
				<button class="selection-button">Button 2</button>
				<button class="selection-button">Button 3</button>
				<button class="selection-button">Button 4</button>
				<button class="selection-button">Button 5</button>
				<button class="selection-button">Button 6</button>
				<button class="selection-button">Button 7</button>
				<button class="selection-button">Button 8</button>
				<button class="selection-button">Button 9</button>
				<button class="selection-button">Button 10</button>
				<button class="selection-button">Button 11</button>
				<button class="selection-button">Button 12</button>
				<!-- 필요한 만큼 장르 버튼을 추가할 수 있습니다 -->
			</div>
			<form id="genreForm" action="processGenres.jsp" method="post">
				<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
				<input type="hidden" name="selectedGenres" id="selectedGenres" value="">
				<!-- 선택된 장르들을 전송하기 위한 hidden input -->
			</form>
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


<script>
	
	// 페이지가 로드될 때 초기화
	window.onload = function() {
	    var currentPage = document.querySelector('.page');
	    currentPage.classList.add('active');
	};
	
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
	    /* if (currentPage.id === "page1" && nextPage.id === "page2") {
	        var checkbox1 = document.getElementById("checkbox1");
	        var checkbox2 = document.getElementById("checkbox2");
	        if (!checkbox1.checked || !checkbox2.checked) {
	            alert("필수 항목을 모두 체크해주세요.");
	            return;
	        }
	    } */
	    
	 	// 2페이지 -> 3페이지
	    /* if (currentPage.id === "page2" && nextPage.id === "page3") {
	    	var id = document.getElementById("id").value;
	        var password = document.getElementById("password").value;
	        var passwordcheck = document.getElementById("passwordcheck").value;
	        var username = document.getElementById("username").value;
	        var phone = document.getElementById("phone").value;
	        var nickname = document.getElementById("nickname").value;
	        var email = document.getElementById("email").value;
	        var emailcheck = document.getElementById("emailcheck").value;

	        if (id === "" || password === "" || passwordcheck === "" || username === "" || phone === "" || nickname === "" || email === "" || emailcheck === "") {
	            alert("빈 항목을 모두 입력해주세요.");
	            return; 
	        }
	    } */
	    
	    if (nextPage) {
	        currentPage.classList.remove('active');
	        nextPage.classList.remove('next');
	        nextPage.classList.add('active');
	        currentPage.classList.add('prev');
	    }
	}
	
	// 페이지 3에서 선택된 항목의 개수를 추적하는 변수
    let selectedGenresPage3 = 0;

    // 페이지 4에서 선택된 항목의 개수를 추적하는 변수
    let selectedGenresPage4 = 0;

    // 페이지 3의 버튼 선택 기능
    document.addEventListener("DOMContentLoaded", function() {
        const buttons = document.querySelectorAll("#genreSelection3 .selection-button");
        
        buttons.forEach(button => {
            button.addEventListener("click", function() {
                if (button.classList.contains("selected")) {
                    button.classList.remove("selected");
                    button.style.backgroundColor = "#FFE716"; // 선택 해제시 노란색
                    selectedGenresPage3--;
                } else {
                    if (selectedGenresPage3 < 3) {
                        button.classList.add("selected");
                        button.style.backgroundColor = "#fa9a1b"; // 선택시 빨간색
                        selectedGenresPage3++;
                    } else {
                        alert("최대 3개의 버튼만 선택할 수 있습니다.");
                    }
                }
            });
        });
    });

    // 페이지 4의 버튼 선택 기능
    document.addEventListener("DOMContentLoaded", function() {
        const buttons = document.querySelectorAll("#genreSelection4 .selection-button");
        
        buttons.forEach(button => {
            button.addEventListener("click", function() {
                if (button.classList.contains("selected")) {
                    button.classList.remove("selected");
                    button.style.backgroundColor = "#FFE716"; // 선택 해제시 노란색
                    selectedGenresPage4--;
                } else {
                    if (selectedGenresPage4 < 3) {
                        button.classList.add("selected");
                        button.style.backgroundColor = "#fa9a1b"; // 선택시 빨간색
                        selectedGenresPage4++;
                    } else {
                        alert("최대 3개의 버튼만 선택할 수 있습니다.");
                    }
                }
            });
        });
    });
    
    function redirectToURL(url) {
        window.location.href = url;
    }
	
</script>

<%@ include file="../footer.jsp"%>