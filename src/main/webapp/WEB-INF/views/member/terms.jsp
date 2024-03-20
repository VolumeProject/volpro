<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<link href="/resources/css/member/terms.css" rel='stylesheet'>

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
	<div class="btn-login-container">
		<button type="button" class="btn-share" onclick="validateAndProceed()">다음으로</button>
	</div>
</div>

<script>
	// 모두 동의 체크박스 요소와 다른 체크박스 요소들을 가져옴
	const checkAllCheckbox = document.getElementById("checkAll");
	const otherCheckboxes = document.querySelectorAll(".checkbox");

	// 모두 동의 체크박스 클릭 시 다른 체크박스들의 상태 변경
	checkAllCheckbox.addEventListener("click", function() {
		otherCheckboxes.forEach(function(checkbox) {
			checkbox.checked = checkAllCheckbox.checked;
		});
	});
	
	function validateAndProceed() {
	    // 체크박스 요소들 가져오기
	    var checkbox1 = document.getElementById("checkbox1");
	    var checkbox2 = document.getElementById("checkbox2");

	    // 체크 여부 확인
	    if (checkbox1.checked && checkbox2.checked) {
	        // 두 체크박스가 모두 체크되어 있을 때만 진행
	        // 이동하고자 하는 페이지의 URL
	   	 	var nextPageUrl = "/member/form";
	    	// 페이지 이동
	   		 window.location.href = nextPageUrl;
	        // 페이지 이동하거나 원하는 작업을 수행하는 코드를 여기에 추가합니다.
	    } else {
	        // 두 체크박스 중 하나라도 체크되어 있지 않으면 경고 메시지 출력
	        alert("필수 항목을 체크해주세요.");
	        return false;
	    }
	    
	    
	}
	
	
</script>

<%@ include file="../footer.jsp"%>