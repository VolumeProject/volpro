<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<link href="/resources/css/search.css" rel='stylesheet'>

<div class="container-fluid">
	<div class="page-title">
		<h1>LOGIN</h1>
	</div>
</div>

<div class="subcontent-title">
	<h2>"XXX" 검색결과</h2>
</div>
<div class="container-fluid" style="width:100%; height:900px;">
	
	<div class="search-results">
			<div class="sear-song">
			<h2>제목</h2>
				<div class="song-box">
					<div class="album-img">
						<a href="#"><img src="/resources/images/logo3.png" alt="..." class="img-thumbnail"></a>
					</div>
					<div class="artist-album">
						<a href="#"><span>아티스트 이름</span></a>
						<br/>
						<h3><a href="#">앨범이름 / 곡 이름</a></h3>
						<br/>
						<p><a href="#">발매일자</a></p>
					</div>
					<div class="box-menu">
						<button type="button" class="glyphicon glyphicon-play" id="btn-play"></button>
						<button type="button" class="btn-addplaylist">ADD List</button>
						<button type="button" class="btn-addupper">ADD Upper</button>
						<button type="button" class="btn-like">Like</button>
						<button type="button" class="btn-detail">Detail</button>
						<button type="button" class="btn-share">Share</button>
					</div>
				</div>
				<div class="song-box">
					<div class="album-img">
						<a href="#"><img src="/resources/images/logo3.png" alt="..." class="img-thumbnail"></a>
					</div>
					<div class="artist-album">
						<a href="#"><span>아티스트 이름</span></a>
						<br/>
						<h3><a href="#">앨범이름 / 곡 이름</a></h3>
						<br/>
						<p><a href="#">발매일자</a></p>
					</div>
					<div class="box-menu">
						<button type="button" class="glyphicon glyphicon-play" id="btn-play"></button>
						<button type="button" class="btn-addplaylist">ADD List</button>
						<button type="button" class="btn-addupper">ADD Upper</button>
						<button type="button" class="btn-like">Like</button>
						<button type="button" class="btn-detail">Detail</button>
						<button type="button" class="btn-share">Share</button>
					</div>
				</div>
			</div>
			<div class="sear-album">
			<h2>앨범</h2>
				<div class="song-box">
					<div class="album-img">
						<a href="#"><img src="/resources/images/logo3.png" alt="..." class="img-thumbnail"></a>
					</div>
					<div class="artist-album">
						<a href="#"><span>아티스트 이름</span></a>
						<br/>
						<h3><a href="#">앨범이름</a></h3>
						<br/>
						<p><a href="#">발매일자</a></p>
					</div>
					<div class="box-menu">
						<button type="button" class="glyphicon glyphicon-play" id="btn-play"></button>
						<button type="button" class="btn-addplaylist">ADD List</button>
						<button type="button" class="btn-addupper">ADD Upper</button>
						<button type="button" class="btn-like">Like</button>
						<button type="button" class="btn-detail">Detail</button>
						<button type="button" class="btn-share">Share</button>
					</div>
				</div>
				<div class="song-box">
					<div class="album-img">
						<a href="#"><img src="/resources/images/logo3.png" alt="..." class="img-thumbnail"></a>
					</div>
					<div class="artist-album">
						<a href="#"><span>아티스트 이름</span></a>
						<br/>
						<h3><a href="#">앨범이름</a></h3>
						<br/>
						<p><a href="#">발매일자</a></p>
					</div>
					<div class="box-menu">
						<button type="button" class="glyphicon glyphicon-play" id="btn-play"></button>
						<button type="button" class="btn-addplaylist">ADD List</button>
						<button type="button" class="btn-addupper">ADD Upper</button>
						<button type="button" class="btn-like">Like</button>
						<button type="button" class="btn-detail">Detail</button>
						<button type="button" class="btn-share">Share</button>
					</div>
				</div>
			</div>
		
		
	</div>
	<div class="col-lg-1"></div>
</div>
<%@ include file="../footer.jsp" %>