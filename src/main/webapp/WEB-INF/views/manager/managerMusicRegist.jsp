<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="managerHeader.jsp" %>

<link href="/resources/css/manager/managerMusicRegist.css" rel='stylesheet'>

<div class="container-fluid" style=" width:100%; height:300px;">
	<div class="page-title">
		<h1>MUSIC REGIST</h1>
	</div>
</div>

<div class="container">
	<form name="musicregist" method="post" action="/manager/register">
	<div class="col-lg-5 album-regi">
		<div class="album-img">
			<img src="/resources/images/11.jpg">
		</div>
	
		<div class="all-btn">
			<button type="button" class="btn-albumimg">앨범 자켓 등록</button>
			<button type="button" class="btn-cancel">취소</button>
			<button type="reset" class="btn-reset">다시쓰기</button>
			<button type="submit" class="btn-regist">등록하기</button>
		</div>
	</div>
	
	
		<div class="col-lg-7 music-info">
			<table>
				<tr>
					<th>제목</th>
					<td>
						<input type="text" class="mu-info" name="music_title" placeholder="곡 제목을 입력하세요">
					</td>
				</tr>
				<tr>
					<th>앨범</th>
					<td>
						<input type="text" class="mu-info" name="music_album" placeholder="앨범 제목을 입력하세요">
					</td>
				</tr>
				<tr>
					<th>아티스트</th>
					<td>
						<input type="text" class="mu-info" name="music_artist" placeholder="아티스트 명을 입력하세요">
					</td>
				</tr>
				<tr>
					<th>발매일</th>
					<td>
						<input type="text" class="mu-info" name="music_releasedate" placeholder="6자리로 입력해주세요. (ex.240101)">
					</td>
				</tr>
				<tr>
					<th>작곡가</th>
					<td>
						<input type="text" class="mu-info" name="music_composer" placeholder="작곡가를 입력하세요">
					</td>
				</tr>
				<tr>
					<th>작사가</th>
					<td>
						<input type="text" class="mu-info" name="music_lyricist" placeholder="작사가를 입력하세요">
					</td>
				</tr>
				<tr>
					<th>그 외 작업자</th>
					<td>
						<input type="text" class="mu-info" name="music_etc" placeholder="기타 작업자가 있다면 입력하세요">
					</td>
				</tr>
				<tr>
					<th>장르</th>
					<td>
						<input type="text" class="mu-info" name="music_genre" placeholder="장르를 입력하세요">
					</td>
				</tr>
				<tr>
					<th>uri</th>
					<td>
						<input type="text" class="mu-info" name="music_uri" placeholder="주소 입력">
					</td>
				</tr>
				<tr>
					<th>가사</th>
					<td>
						<textarea class="mu-info" name="music_lyrics" maxlength="4000" placeholder="전체 알림으로 보낼 메세지 입력"></textarea>
					</td>
				</tr>
			</table>
		</div>
	</form>
</div>