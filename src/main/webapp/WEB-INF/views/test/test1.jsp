<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<link href="/resources/css/chart/chart.css" rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
        integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
        crossorigin="anonymous" />

</head>

<style>

.center {
    position: fixed;
    top: 50%;
    left: 90%;
    transform: translate(-50%, -50%);
    list-style: none;
}

.menu {
    width: 300px;
    border-radius: 8px;
    overflow: hidden;
}

.item {
    border-top: 1px solid #000;
    overflow: hidden;
    background: #C28C2E;
    color: #222220;
}

.btn {
    display: block;
    padding: 16px 20px;
    background: #ffe716;
    color: #222220;
    position: relative;
    font-weight: bold;
}

.btn i {
    margin-right: 10px;
}

.smenu {
    background: #1c1c1c;
    overflow: auto;
    max-height: 0;
    transition: max-height 0.3s ease;
}

.smenu a {
    color: #ffe716;
    display: block;
    padding: 16px 26px;
    font-size: 14px;
    margin: 4px 0;
    position: relative;
}

.smenu a:before {
    content: "";
    width: 5px;
    height: 100%;
    position: absolute;
    background: #ffe716;
    left: 0;
    top: 0;
    transition: 0.3s;
    opacity: 0;
}

.smenu a:hover::before {
    opacity: 1;
}

/*#profile:hover .smenu {
    max-height: 100%;
}*/

.item:target .smenu {
    max-height: 15em;
}

</style>




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


</body>
</html>
