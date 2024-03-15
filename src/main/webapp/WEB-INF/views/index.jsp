<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div id="wrapper">

<!-- main visual -->
	<div class="container-fluid" style="padding-right:0px; padding-left:0px;">
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
			<div class="col-lg-1"></div>
			<div class="col-lg-10">
				<div class="main-chart">
					
				</div>
			</div>
			<div class="col-lg-1"></div>
		</div>
	</div>
	
</div>
<%@ include file="footer.jsp" %>