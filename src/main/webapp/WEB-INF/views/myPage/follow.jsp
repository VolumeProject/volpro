<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div class="container">

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#following" aria-controls="following" role="tab" data-toggle="tab">Following</a></li>
    <li role="presentation"><a href="#follower" aria-controls="follower" role="tab" data-toggle="tab">Follower</a></li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="following">
    	<div class="following-list">
    		<div class="list-img">
    			<img src="/resources/images/logo2.png" alt="..." classs="img-circle">
    		</div>
    		<div class="list-name">
    			<h3>닉끄네이무</h3>
    		</div>
    		<div class="list-onecomment">
    			<p>한줄 소개라는데 뭐 일단 적당한 길이로 아무거나 써놓겠습니다.</p>
    		</div>
    		<div class="list-count">
    			<p>팔로잉 245</p>
    			<p>팔로워 2300</p>
    		</div>
    		<div class="list-followbtn">
    			<button type="button" class="btn-follow">팔로우</button>
    		</div>
    	</div>
    </div>
    <div role="tabpanel" class="tab-pane" id="follower">
    	<div class="follower-list">
    		<div class="list-img">
    			<img src="/resources/images/logo2.png" alt="..." classs="img-circle">
    		</div>
    		<div class="list-name">
    			<h3>닉끄네이무</h3>
    		</div>
    		<div class="list-onecomment">
    			<p>한줄 소개라는데 뭐 일단 적당한 길이로 아무거나 써놓겠습니다.</p>
    		</div>
    		<div class="list-count">
    			<p>팔로잉 245</p>
    			<p>팔로워 2300</p>
    		</div>
    		<div class="list-followbtn">
    			<button type="button" class="btn-follow">팔로우</button>
    		</div>
    	</div>
    </div>
  </div>

</div>

<%@ include file="../footer.jsp" %>