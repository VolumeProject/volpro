<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<link href="/resources/css/search.css" rel='stylesheet'>

<div class="container-fluid">
	<div class="page-title">
		<h1>SEARCH</h1>
	</div>
	<div class="search-img">
		<img src="/resources/images/back3.jpg">
	</div>
</div>

<div class="subcontent-title">
	<h2>"XXX" 검색결과</h2>
</div>
<div class="container-fluid" style="width:100%; height:900px;">
	<div class="col-lg-1"></div>
	<div class="search-results">
		<div class="col-lg-6" style="height:900px;">
			<div class="sear-singer" style="height:40%;">
				<h3>가수</h3>
					<div class="col-lg-3" style="height: 300px; text-align: center; padding:30px 0px 30px;">
						<img src="/resources/images/logo2.png" alt="..." class="img-circle">
						<div class="singer">
							<h3><a href="#">아티스트 이름</a></h3>
						</div>
					</div>
					<div class="col-lg-3" style="height: 300px; text-align: center; padding:30px 0px 30px;">
						<img src="/resources/images/logo2.png" alt="..." class="img-circle">
						<div class="singer">
							<h3><a href="#">아티스트 이름</a></h3>
						</div>
					</div>
					<div class="col-lg-3" style="height: 300px; text-align: center; padding:30px 0px 30px;">
						<img src="/resources/images/logo2.png" alt="..." class="img-circle">
						<div class="singer">
							<h3><a href="#">아티스트 이름</a></h3>
						</div>
					</div>
					<div class="col-lg-3" style="height: 300px; text-align: center; padding:30px 0px 30px;">
						<img src="/resources/images/logo2.png" alt="..." class="img-circle">
						<div class="singer">
							<h3><a href="#">아티스트 이름</a></h3>
						</div>
					</div>
			</div>
			<div class="sear-song">
				<div class="song-box">
					<div class="album-img">
						<img src="/resources/images/logo3.png" alt="..." class="img-thumbnail">
					</div>
					<div class="artist-album">
						<span>아티스트 이름</span>
						<br/>
						<h3>앨범이름 / 곡 이름</h3>
						<br/>
						<p>발매일자</p>
					</div>
					<div class="box-menu">
						
					</div>
				</div>
			</div>
			<div class="sear-album">
			
			</div>
		</div>
		<div class="col-lg-4" style="height:900px; border-left:2px solid #ccc;">
		
		</div>
	</div>
	<div class="col-lg-1"></div>
</div>
<%@ include file="footer.jsp" %>