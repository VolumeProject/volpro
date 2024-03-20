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
					<li role="presentation"><a href="#" class="pf-view">プロフィル閲覧</a></li>
					<li role="presentation"><a href="#" class="pf-edit" style="font-weight:bold; font-size:21px;">プロフィル修正</a></li>
				</ul>
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation"><p class="pf-title2">個人情報</p></li>
					<li role="presentation"><a href="#" class="pf-view">個人情報閲覧</a></li>
					<li role="presentation"><a href="#" class="pf-edit">個人情報修正</a></li>
				</ul>
			</div>
			<div class="pro-info col-lg-9">
				<form name="my-edit" method="post" enctype="multipart/form-data" action="#" onsubmit="return check()">
					<div class="edit-info">
						<img class="img-circle" src="/resources/images/logohigh1.jpg" alt="...">
						<input type="file" name="uploadfile" id="uploadfile" multiple="multiple">
						<table class="edit-form">
							<tr>
								<th>ニックネーム</th>
								<td><input type="text" name="title"></td>
							</tr>
							<tr>
								<th>自己紹介</th>
								<td><textarea name="content"></textarea></td>
							</tr>
						</table>
						<div class="follow">
							<a href="#">follow</a>
							<a href="#">follower</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

<%@ include file="../footer.jsp" %>