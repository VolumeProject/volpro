<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link href="/resources/css/mypage/withdraw.css" rel='stylesheet'>

	<div class="mainmessage">
		<div class="title">
			<h1>退会が完了しました</h1>
			<p>今までご利用いただきありがとうございました</p>
		</div>
		<div class="survey">
			<p>Volumeの発展のためアンケートにご協力ください</p>
			<input type="button" class="survey-btn" value="アンケート">
		</div>
		<div class="main">
			<input type="button" class="main-btn" value="メイン画面に戻る">
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