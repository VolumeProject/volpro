<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="managerHeader.jsp" %>

<link href="/resources/css/manager/managerMusicRegist.css" rel='stylesheet'>

<div class="container-fluid" style=" width:100%; height:300px;">
	<div class="page-title">
		<h1>MUSIC MODIFY</h1>
	</div>
</div>

<div class="container">
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
					<input type="text" class="mu-info" id="title" placeholder="곡 제목을 입력하세요"> Pop Virus
				</td>
			</tr>
			<tr>
				<th>앨범</th>
				<td>
					<input type="text" class="mu-info" id="album" placeholder="앨범 제목을 입력하세요"> Pop Virus
				</td>
			</tr>
			<tr>
				<th>아티스트</th>
				<td>
					<input type="text" class="mu-info" id="artist" placeholder="아티스트 명을 입력하세요">  星野源
				</td>
			</tr>
			<tr>
				<th>발매일</th>
				<td>
					<input type="text" class="mu-info" id="regdate" placeholder="6자리로 입력해주세요. (ex.240101)">　181219
				</td>
			</tr>
			<tr>
				<th>작곡가</th>
				<td>
					<input type="text" class="mu-info" id="composer" placeholder="작곡가를 입력하세요"> 星野源
				</td>
			</tr>
			<tr>
				<th>작사가</th>
				<td>
					<input type="text" class="mu-info" id="lyricist" placeholder="작사가를 입력하세요">　星野源
				</td>
			</tr>
			<tr>
				<th>그 외 작업자</th>
				<td>
					<input type="text" class="mu-info" id="else" placeholder="기타 작업자가 있다면 입력하세요">　アレンジ：미오,나가오카 료스케,이시바시 에이코,호시노 겐
				</td>
			</tr>
			<tr>
				<th>가사</th>
				<td>
					<input type="text" class="mu-info" id="lyric" placeholder="가사를 입력하세요">
				</td>
			</tr>
		</table>
	</div>
</div>