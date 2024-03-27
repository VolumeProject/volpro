<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<link href="/resources/css/index.css" rel='stylesheet'>

<div id="wrapper">

<!-- main visual -->
	<div class="container-fluid" style="padding-right:0px; padding-left:0px; height:850px;">
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="height:500px;">
		  <!-- Indicators -->
		  <ol class="carousel-indicators" style="bottom: -40%;">
		    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
		  </ol>
		
		  <!-- Wrapper for slides -->
		  <div class="carousel-inner" role="listbox">
		    <div class="item active">
		      <img src="/resources/images/logohigh1.jpg" alt="..." style="width:100%; height:800px; overflow:hidden;">
		      <div class="carousel-caption">
		        ...
		      </div>
		    </div>
		    <div class="item">
		      <img src="/resources/images/back2.jpg" alt="..." style="width:100%; height:800px; overflow:hidden;">
		      <div class="carousel-caption">
		        ...
		      </div>
		    </div>
		    <div class="item">
		      <img src="/resources/images/back3.jpg" alt="..." style="width:100%; height:800px; overflow:hidden;">
		      <div class="carousel-caption">
		        ...
		      </div>
		    </div>
		    ...
		  </div>
		
		  <!-- Controls -->
		  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev" style="background-image: linear-gradient(to right, rgb(255 255 255 / 0%) 0, rgb(255 255 255 / 0%) 100%);">
		    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true" style="line-height:220px;"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next" style="background-image: linear-gradient(to right, rgb(255 255 255 / 0%) 0, rgb(255 255 255 / 0%) 100%);">
		    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true" style="line-height:220px;"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
	</div>
	
	<div class="container">
		<div class="sub-contents">
				<div class="chart-text">
					<h1 style="color:#FFE716; font-size:55px; padding:30px 0 0 6px;"><Strong>일간 차트</Strong></h1>
				</div>
				<div class="container-fluid chart-box">
					<div class="main-chart">
					<c:forEach var="list" items="${list}" varStatus="status">	
							<div class="media">
							  <div class="media-left media-top">
							    <a href="#">
							      <img class="media-object" src="/resources/images/logohigh1.jpg" alt="..." style="width:50px; height:50px; overflow:hidden;">
							    </a>
							  </div>
							  <div class="media-body">
							    <h4 class="media-heading" style="padding-top:5px;"><a href="#"><Strong>${status.index}.${list.music_artist }</Strong></a></h4>
							    <a href="#"><span>${list.music_title }</span></a>
							  </div>
							</div>
					</c:forEach>
					</div>
				</div>
		</div>
	</div>
	
	<div class="container">
		<div class="playlist-text">
			<h1 style="color:#FFE716; font-size:55px; padding:30px 0 0 6px;"><Strong>연관 플레이리스트</Strong></h1>
		</div>
		<div class="index-playlist">
			<div class="playlist-box" style="padding:30px;">
				<c:forEach var="playlist" items="${playlist }">
					<div class="row" style="display:inline-grid;">
					    <a href="#" class="thumbnail">
					      <img src="${playlist.playlist_picture }" alt="...">
					    </a>
					  <br/>
					  <div class="row-text">
					  	<h4><a href="">${playlist.playlist_no }.${playlist.playlist_name }</a></h4>
					  	<br/>
					  	<a href=""><span>작성자 이름</span></a>
					  </div>
				   </div>
			  </c:forEach>
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="playlist-text">
			<h1 style="color:#FFE716; font-size:55px; padding:30px 0;"><Strong>"힙합"관련 플레이리스트</Strong></h1>
		</div>
		<div class="index-playlist">
			<div class="playlist-box">
				<c:forEach var="playlist" items="${playlist }">
					<div class="row" style="display:inline-grid;">
					    <a href="#" class="thumbnail">
					      <img src="${playlist.playlist_picture }" alt="...">
					    </a>
					  <br/>
					  <div class="row-text">
					  	<h4><a href="">${playlist.playlist_no}.${playlist.playlist_name}</a></h4>
					  	<br/>
					  	<a href=""><span>작성자 이름</span></a>
					  </div>
				  	</div>
			  	</c:forEach>
			</div>
		</div>
	</div>
	
</div>
<%@ include file="footer.jsp" %>