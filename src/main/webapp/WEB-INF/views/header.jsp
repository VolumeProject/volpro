<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> --%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"
	integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
	crossorigin="anonymous"></script>


<link href="/resources/css/HeadFoot.css" rel='stylesheet'>
<link href="/resources/css/common.css" rel="stylesheet">
<link href="/resources/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
	crossorigin="anonymous">
<link href="https://netdna.bootstrapcdn.com/font-awesoment-awesome.css" rel="stylesheet">

<title>Volume Index</title>
</head>

<body style="background:#1c1c1c;">
	<div class="container-fluid search-bar">
		<form name="seacher" method="get" class="seacher" action="/volume/search">
			<input type="text" class="text-area" placeholder="검색어를 입력해 주세요">
			<button class="btn-search" type="submit">검색</button>
		</form>
		<button class="searchmark" id="close" type="submit">X</button>
	</div>

	<div class="container-fluid" style="height: 100px; background: #1c1c1c; padding-right:0px; padding-left:0px;">
		<header class="header">
			<div class="col-lg-1" style="height: 101px; border-bottom: 1px solid #ffe716;">
				<div class="btnside">
					<!-- <span class="fas fa-bars"></span> -->
					<span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>
				</div>
			
				<nav class="sidebar">
					<div class="text">Side Menu</div>
					<ul>
						<li><a href="#">Playlist</a></li>
						<li>
							<a href="#" class="chart-btn">Chart
								<span class="fas fa-caret-down first"></span>
							</a>
							<ul class="chart-show">
								<li><a href="#">Genre</a></li>
								<li><a href="#">Today</a></li>
								<li><a href="#">Global</a></li>
								<li><a href="#">K-pop</a></li>
								<li><a href="#">Year</a></li>
							</ul>
						</li>
						<li><a href="/volume/upper">Upper</a></li>
						<li><a href="#">Amateurs</a></li>
						<li><a href="#">My Page</a></li>
					</ul>
				</nav>
			</div>
			
			<div class="col-lg-2" style="border-bottom: 1px solid #ffe716;">
				<nav class="top_left">
					<ul style="list-style: none; padding-left: 0px;">
						<li class="first"><a class="logoimg" href="/"><img
								src="/resources/images/logo3.png"
								style="width: 200px; height: 45px;" /></a></li>
					</ul>
				</nav>
			</div>
			
			<div class="col-lg-7" style="border-bottom: 1px solid #ffe716;">
				<nav class="top_middle">
					<ul style="list-style: none; padding-left: 0px;">
						<li><a href="">PlayList</a></li>
						<li><a href="">Chart</a></li>
						<li><a href="/volume/upper">Upper</a></li>
						<li><a href="">Amateurs</a></li>
					</ul>
				</nav>
			</div>
			
			<div class="col-lg-2" style="border-bottom: 1px solid #ffe716;">
				<nav class="top_right">
					<ul style="list-style:none; padding-top:10px;">
						<li>
							<!-- <a href="#"></a> -->
							<button class="btn btn-default searchmark" type="button"
									id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="true" style="width: 100%; height:100%; padding-top:17px; background:#1c1c1c;">
									<span class="glyphicon glyphicon-search" style="display: inline; line-height: 70px; color:#FFE716; font-size:30px;"></span>
							</button>
						</li>
						<li><div class="dropdown"> 
								<button class="btn btn-default dropdown-toggle" type="button"
									id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="true" style="border-color:#1c1c1c; width: 100%; height:100px; padding-top:17px;">
									<span class="glyphicon glyphicon-user" style="display: inline; line-height: 70px; color:#FFE716; font-size:30px;"></span>
								</button>
								<ul class="dropdown-menu" aria-labelledby="dropdownMenu1"
									style="position: absolute; top: 105%; left: -62px; z-index: 1000; float: left; min-width: 160px; padding: 5px 0; margin: 2px 0 0; font-size: 14px; text-align: left; list-style: none; background-color: #1c1c1c; background-clip: padding-box; border: 1px solid rgba(0, 0, 0, .15); border-radius: 4px; box-shadow: 0 6px 12px rgba(0, 0, 0, .175);">
									<c:if test="${empty member }">
										<li class="first"><a href="/member/login" style="padding:40px 30px;">로그인</a></li>
										<li><a href="/member/join" style="padding:40px 30px;">회원가입</a></li>
									</c:if>
									<c:if test="${!empty member }">
										<li>${member.username }님</li>
										<li class="first"><a href="/">로그아웃</a></li>
										<li><a href="/">마이페이지</a></li>
										<li><a href="/">문의요청</a></li>
									</c:if>
								</ul>
							</div></li>
					</ul>
				</nav>
			</div>
		</header>
	</div>
	
<script>
$('.btnside').click(function() {
	$(this).toggleClass("click");
	$('.sidebar').toggleClass("show");
})
	$('.chart-btn').click(function() {
		$('nav ul .chart-show').toggleClass("show");
		$('nav ul .first').toggleClass("rotate");
	});
	$('nav ul li').click(function() {
		$(this).addClass("active").siblings().removeClass("active");
	});

$('.searchmark').click(function() {
	$('.search-bar').toggleClass("click");
	$('.text-area').toggleClass("show");
	$('.btn-search').toggleClass("show");
})
</script>
</body>
</html>
