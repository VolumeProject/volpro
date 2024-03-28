<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link href="/resources/css/mypage/infoEdit.css" rel='stylesheet'>

	<div class="container">
		<div class="mp-title">
			<h1>MY PAGE</h1>
			<h2>プロフィル修正</h2>
		</div>
		<div class="mp-content">
			<div class="info-sidebar col-lg-3">
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation"><p class="pf-title">プロフィル</p></li>
					<li role="presentation"><a href="/mypage/mypage?users_id=${principal.username}" class="pf-view">プロフィル閲覧</a></li>
					<li role="presentation"><a href="/mypage/infoEdit?users_id=${principal.username}" class="pf-edit" style=" font-size:20px; color: #FFE716;">プロフィル修正</a></li>
				</ul>
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation"><p class="pf-title2">個人情報</p></li>
					<li role="presentation"><a href="/mypage/personal?users_id=${principal.username}" class="pf-view">個人情報閲覧</a></li>
					<li role="presentation"><a href="/mypage/pwcheck" class="pf-edit">個人情報修正</a></li>
					<li role="presentation"><a href="#" class="pf-wd">会員退会</a></li>
				</ul>
			</div>
			<div class="pro-info col-lg-9">
				<form name="my-edit" method="post" enctype="multipart/form-data" action="/mypage/infoEdit">
					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
					<input type="hidden" name="users_id" value="${vo.users_id}" />
					<div class="edit-info">
						<img src="${vo.users_profile}" class="img-circle" id="previewImg" alt="...">
						<div class="file_cus">
							<label> 
								<input type="file" name="uploadfile" id="uploadfile">
								<span class="file_name">파일을 선택해주세요.</span>
								<span class="file_btn">파일선택</span>
							</label>
							<p>이미지는 반드시 1:1비율의 이미지를 사용해주세요.</p>
						</div>
						
						<div class="edit-form">
							<div class="inputform">
								<span>ニックネーム</span>
								<input type="text" name="users_nickname" class="users_nickname" id="users_nickname" placeholder="닉네임을 입력해주세요." value="${vo.users_nickname}">
							</div>
							<div class="inputform text_box">
								<span>ひとこと</span>
								<textarea name="users_introduction" class="users_introduction" id="users_introduction" placeholder="한마디">${vo.users_introduction}</textarea>
								<div class="count"><span class="himdureo">0</span>/100</div>
							</div>
						</div>
					</div>
					<div class="edit-btn">
						<button type="submit" class="btn-ok">저장</button>&nbsp;&nbsp;
						<input type="reset" value="초기화" class="btn-reset">&nbsp;&nbsp;
					</div>
				</form>
			</div>
		</div>
	</div>

<script type="text/javascript">


	$(window).on('load', function() {
		fileCus();
	})

	function fileCus() {
		$(".file_cus input[type=file]").on("change", function() {
			const fileName = $(this).val().split("\\").pop();
			$(this).siblings(".file_name").text(fileName || "파일을 선택해주세요.");
		});
	}
	
	$(function() {
		$("#uploadfile").on('change', function() {
			readURL(this);
		});
	});

	function readURL(input) {

		if (input.files && input.files[0]) {

			var reader = new FileReader();

			reader.onload = function(e) {
				$('#previewImg').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}

	// 키보다가 눌릴때 { } 안의 함수 실행
	$('.text_box textarea').keyup(function() {

		//  함수	content는 이 함수 이다.
		var content = $(this).val();
		$('.text_box .count span').html(content.length);
		if (content.length > 100) {
			alert("최대 100자까지 입력 가능합니다.");
			$(this).val(content.substring(0, 100));
			$('.text_box .count span').html(100);
		}
	});

	//	$('#textBox').keyup(function (e) {
	//		let content = $(this).val();
	//	    
	//	    // 글자수 세기
	//	    if (content.length == 0 || content == '') {
	//	    	$('.textCount').text('0자');
	//	    } else {
	//	    	$('.textCount').text(content.length + '자');
	//	    }
	//	    
	//	    // 글자수 제한
	//	    if (content.length > 200) {
	//	    	// 200자 부터는 타이핑 되지 않도록
	//	        $(this).val($(this).val().substring(0, 200));
	//	        // 200자 넘으면 알림창 뜨도록
	//	        alert('글자수는 200자까지 입력 가능합니다.');
	//	    };
	//	});
</script>




<%@ include file="../footer.jsp" %>