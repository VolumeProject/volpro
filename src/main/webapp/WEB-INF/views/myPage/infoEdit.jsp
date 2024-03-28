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
					<li role="presentation"><a href="/mypage/wdPwCheck" class="pf-wd">会員退会</a></li>
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
								<span class="file_name">ファイルを選択してください。</span>
								<span class="file_btn">ファイル選択</span>
							</label>
							<p>画像は必ず1:1の割合の画像を使用してください。</p>
						</div>
						
						<div class="edit-form">
							<div class="inputform">
								<span>ニックネーム</span>
								<input type="text" name="users_nickname" class="users_nickname" id="users_nickname" placeholder="ニックネーム" value="${vo.users_nickname}">
							</div>
							<div class="inputform text_box">
								<span>ひとこと</span>
								<textarea name="users_introduction" class="users_introduction" id="users_introduction" placeholder="ひとこと">${vo.users_introduction}</textarea>
								<div class="count"><span class="himdureo">0</span>/100</div>
							</div>
						</div>
					</div>
					<div class="edit-btn">
						<button type="submit" class="btn-ok">保存</button>&nbsp;&nbsp;
						<input type="reset" value="初期化" class="btn-reset">&nbsp;&nbsp;
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
			$(this).siblings(".file_name").text(fileName || "ファイルを選択してください。");
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
			alert("最大100文字まで入力可能です。");
			$(this).val(content.substring(0, 100));
			$('.text_box .count span').html(100);
		}
	});

</script>

<%@ include file="../footer.jsp" %>