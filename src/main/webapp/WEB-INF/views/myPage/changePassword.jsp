<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link href="/resources/css/mypage/pwchange.css" rel='stylesheet'>

	<div class="container">
		<div class="mp-title">
			<h1>MY PAGE</h1>
			<h2>個人情報修正</h2>
		</div>
		<div class="mp-content">
			<div class="info-sidebar col-lg-3">
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation"><p class="pf-title">プロフィル</p></li>
					<li role="presentation"><a href="#" class="pf-view">プロフィル閲覧</a></li>
					<li role="presentation"><a href="#" class="pf-edit">プロフィル修正</a></li>
				</ul>
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation"><p class="pf-title2">個人情報</p></li>
					<li role="presentation"><a href="#" class="pf-view">個人情報閲覧</a></li>
					<li role="presentation"><a href="#" class="pf-edit" style=" font-size:20px; color: #FFE716;">個人情報修正</a></li>
					<li role="presentation"><a href="#" class="pf-wd">会員退会</a></li>
				</ul>
			</div>
			<div class="pro-info col-lg-9">
				<h1>パスワード変更</h1>
				<div class="edit-form">
					<form name="pwChange" method="post"action="#" onsubmit="return check()">
						<div class="pwchange">
							<label for="presentpw">現在のパスワード</label>
							<input type="password" name="presentpw" class="presentpw" id="presentpw" style="margin-right: 120px;"><br>
							<label for="newpw">新しいパスワード</label>
							<input type="password" name="newpw" class="newpw" id="newpw">
							<p>비밀번호 조건</p><br>
							<label for="pwck">パスワード確認</label>
							<input type="password" name="pwck" class="pwck" id="pwck" style="margin-right: 120px;">
						</div>
						<div class="change-btn">
							<input type="submit" value="変更" class="btn-ok">&nbsp;&nbsp;
						</div>
					</form>
				</div>
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
		$("#fileupload").on('change', function() {
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