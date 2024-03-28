<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link href="/resources/css/mypage/personal.css" rel='stylesheet'>

	<div class="container">
		<div class="mp-title">
			<h1>MY PAGE</h1>
			<h2>個人情報閲覧</h2>
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
					<li role="presentation"><a href="/mypage/personal?users_id=${principal.username}" class="pf-view" style=" font-size:20px; color: #FFE716;">個人情報閲覧</a></li>
					<li role="presentation"><a href="/mypage/pwcheck" class="pf-edit">個人情報修正</a></li>
					<li role="presentation"><a href="/mypage/wdPwCheck" class="pf-wd">会員退会</a></li>
				</ul>
			</div>
			<div class="per-info col-lg-9">
				<div>
					<div class="info-class col-lg-5">
						<p>ID</p>
						<p>ニックネーム</p>
						<p>名前</p>
						<p>電話番号</p>
						<p>E-mail</p>
					</div>
					<div class="info-sub col-lg-7">
						<p>${vo.users_id }</p>
						<p>${vo.users_nickname }</p>
						<p>${vo.users_name }</p>
						<p>${vo.users_phone }</p>
						<p>${vo.users_email }</p>
					</div>
				</div>
				<div class="util">
					<h1>使っている利用券</h1>
					<div class="present-util">
						<p class="util-name">이용권 이름</p>
						<p class="pay-date">23.03.22</p>
					</div>
				</div>
				<div class="past-util">
					<h2>利用券使用履歴</h2>
					<div class="past-util-list">
						<ul>
							<li>
								<span class="past-util-name">이용권 이름</span>
								<p class="past-pay-date">23.03.22</p>
							</li>
							<li>
								<span class="past-util-name">이용권 이름</span>
								<p class="past-pay-date">23.03.22</p>
							</li>
							<li>
								<span class="past-util-name">이용권 이름</span>
								<p class="past-pay-date">23.03.22</p>
							</li>
							<li>
								<span class="past-util-name">이용권 이름</span>
								<p class="past-pay-date">23.03.22</p>
							</li>
							<li>
								<span class="past-util-name">이용권 이름</span>
								<p class="past-pay-date">23.03.22</p>
							</li>
							<li>
								<span class="past-util-name">이용권 이름</span>
								<p class="past-pay-date">23.03.22</p>
							</li>
							<li>
								<span class="past-util-name">이용권 이름</span>
								<p class="past-pay-date">23.03.22</p>
							</li>
							<li>
								<span class="past-util-name">이용권 이름</span>
								<p class="past-pay-date">23.03.22</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

<script>


	
</script>




<%@ include file="../footer.jsp" %>