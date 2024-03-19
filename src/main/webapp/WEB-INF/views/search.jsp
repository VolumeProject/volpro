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
		<div class="col-lg-6" style="height:100%;">
			<div class="sear-singer" style="height:40%;">
				<h2>가수</h2>
					<div class="col-lg-3" style="height: 300px; text-align: center; padding:30px 0px 30px;">
						<a href="#"><img src="/resources/images/logo2.png" alt="..." class="img-circle"></a>
						<div class="singer">
							<h3><a href="#">아티스트 이름</a></h3>
						</div>
					</div>
					<div class="col-lg-3" style="height: 300px; text-align: center; padding:30px 0px 30px;">
						<a href="#"><img src="/resources/images/logo2.png" alt="..." class="img-circle"></a>
						<div class="singer">
							<h3><a href="#">아티스트 이름</a></h3>
						</div>
					</div>
					<div class="col-lg-3" style="height: 300px; text-align: center; padding:30px 0px 30px;">
						<a href="#"><img src="/resources/images/logo2.png" alt="..." class="img-circle"></a>
						<div class="singer">
							<h3><a href="#">아티스트 이름</a></h3>
						</div>
					</div>
					<div class="col-lg-3" style="height: 300px; text-align: center; padding:30px 0px 30px;">
						<a href="#"><img src="/resources/images/logo2.png" alt="..." class="img-circle"></a>
						<div class="singer">
							<h3><a href="#">아티스트 이름</a></h3>
						</div>
					</div>
			</div>
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
		<div class="col-lg-4" style="height:1300px; border-left:2px solid #ccc;">
			<div class="sear-playlist" style="height:40%;">
				<h2>플레이리스트</h2>
					<div class="col-lg-6 playlist-imgs" style="height: 300px; text-align: center; padding:10px 0px 30px;">
						<div class="col-lg-6" style="padding-left: 48px;">
							<a href="#"><img src="/resources/images/logo2.png" alt="..." class="img-thumbnail pi1"></a>
							<a href="#"><img src="/resources/images/logo2.png" alt="..." class="img-thumbnail pi2"></a>
						</div>
						<div class="col-lg-6" style="padding-right: 48px;">
							<a href="#"><img src="/resources/images/logo2.png" alt="..." class="img-thumbnail pi3"></a>
							<a href="#"><img src="/resources/images/logo2.png" alt="..." class="img-thumbnail pi4"></a>
						</div>
						<div class="singer">
							<h3><a href="#">아티스트 이름</a></h3>
						</div>
					</div>
					<div class="col-lg-6" style="height: 300px; text-align: center; padding:30px 0px 30px;">
						<a href="#"><img src="/resources/images/logo2.png" alt="..." class="img-thumbnail"></a>
						<div class="singer">
							<h3><a href="#">아티스트 이름</a></h3>
						</div>
					</div>
			</div>
			
			<div class="sear-upper" style="height:40%;">
				<h2>어퍼</h2>
					<div class="col-lg-6" style="height: 350px; text-align: center; padding:30px 0px 30px;">
						<a href="#"><img src="/resources/images/logo2.png" alt="..." class="img-circle"></a>
						<div class="upper-title">
							<h3><a href="/volume/upperdetail">어퍼 타이틀</a></h3>
						</div>
						<div class="upper-tag">
							<p><a href="#">태그</a></p>
							<p><a href="#">태그</a></p>
							<p><a href="#">태그</a></p>
							<p><a href="#">태그</a></p>
							<p><a href="#">태그</a></p>
							<p><a href="#">태그</a></p>
						</div>
					</div>
					<div class="col-lg-6" style="height: 350px; text-align: center; padding:30px 0px 30px;">
						<a href="#"><img src="/resources/images/logo2.png" alt="..." class="img-circle"></a>
						<div class="upper-title">
							<h3><a href="/volume/upperdetail">어퍼 타이틀</a></h3>
						</div>
						<div class="upper-tag">
							<p><a href="#">태그</a></p>
							<p><a href="#">태그</a></p>
							<p><a href="#">태그</a></p>
							<p><a href="#">태그</a></p>
							<p><a href="#">태그</a></p>
							<p><a href="#">태그</a></p>
						</div>
					</div>
			</div>
		</div>
	</div>
	<div class="col-lg-1"></div>
</div>
<%@ include file="footer.jsp" %>