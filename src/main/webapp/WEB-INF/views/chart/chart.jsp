<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<link href="/resources/css/chart/chart.css" rel='stylesheet'>

<div class="container-fluid">
	<div class="page-title">
		<h1>CHART</h1>
	</div>
	<div class="search-img">
		<img src="/resources/images/back3.jpg">
	</div>
</div>

<div class="center">
        <div class="menu">
            <li class="item" id="profile">
                <a href="#profile" class="btn"><i class="far fa-user" aria-hidden="true"></i> 기간별</a>
                <div class="smenu">
                    <a href="">일간 차트</a>
                    <a href="">월간 차트</a>
                    <a href="">년간 차트</a>
                </div>
            </li>
            <li class="item" id="message">
                <a href="#message" class="btn"> <i class="far fa-envelope" aria-hidden="true"></i> 태그별</a>
                <div class="smenu">
                    <a href="">태그1</a>
                    <a href="">태그2</a>
                    <a href="">태그3</a>
                    <a href="">태그4</a>
                    <a href="">태그5</a>
                </div>
            </li>
            <li class="item" id="Settings">
                <a href="#Settings" class="btn"><i class="fas fa-cog" aria-hidden="true"></i> 장르별</a>
                <div class="smenu">
                    <a href="">팝</a>
                    <a href="">힙합</a>
                    <a href="">발라드</a>
                    <a href="">재즈</a>
                    <a href="">뉴에이지</a>
                    <a href="">댄스</a>
                    <a href="">클래식</a>
                </div>
            </li>
            <li class="item" id="logout">
                <a href="#" class="btn"><i class="fas fa-sign-out-alt"></i>메뉴 닫기</a>
            </li>
        </div>
    </div>

<div class="container">
	<div class="content-title">
		<h2>일간 차트</h2>
	</div>
</div>

<div class="container">
	<div class="sear-song">
		<div class="song-box">
			<div class="rank">
				<h3>01</h3>
			</div>
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
			<div class="rank">
				<h3>02</h3>
			</div>
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
			<div class="rank">
				<h3>03</h3>
			</div>
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
			<div class="rank">
				<h3>04</h3>
			</div>
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
			<div class="rank">
				<h3>05</h3>
			</div>
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
			<div class="rank">
				<h3>06</h3>
			</div>
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
			<div class="rank">
				<h3>07</h3>
			</div>
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
			<div class="rank">
				<h3>08</h3>
			</div>
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
			<div class="rank">
				<h3>09</h3>
			</div>
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
			<div class="rank">
				<h3>10</h3>
			</div>
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
</div>

<%@ include file="../footer.jsp" %>