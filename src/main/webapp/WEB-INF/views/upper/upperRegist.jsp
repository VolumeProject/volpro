<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<link href="/resources/css/upper/upperRegist.css" rel='stylesheet'>

<div class="container">
	<div class="upper-making">
		<div class="upper-info">
			<table class="infotable">
				<tr>
					<th>제목 입력</th>
					<td>
						<input type="text" class="uppermaking-title" id="makingupper-title">
					</td>
				</tr>
				<tr>
					<th>코멘트</th>
					<td>
						<input type="text" class="uppermaking-comment" id="makingupper-title">
					</td>
				</tr>
				<tr>
					<th>태그</th>
					<td>
						<input type="checkbox" class="uppermaking-tags" id="makingupper-tags" value="1">태그1
						<input type="checkbox" class="uppermaking-tags" id="makingupper-tags" value="2">태그2
						<input type="checkbox" class="uppermaking-tags" id="makingupper-tags" value="3">태그3
						<input type="checkbox" class="uppermaking-tags" id="makingupper-tags" value="4">태그4
						<br/>
						<input type="checkbox" class="uppermaking-tags" id="makingupper-tags" value="5">태그5
						<input type="checkbox" class="uppermaking-tags" id="makingupper-tags" value="6">태그6
						<input type="checkbox" class="uppermaking-tags" id="makingupper-tags" value="7">태그7
						<input type="checkbox" class="uppermaking-tags" id="makingupper-tags" value="8">태그8
						<br/>
						<input type="checkbox" class="uppermaking-tags" id="makingupper-tags" value="9">태그9
						<input type="checkbox" class="uppermaking-tags" id="makingupper-tags" value="10">태그10
						<input type="checkbox" class="uppermaking-tags" id="makingupper-tags" value="11">태그11
						<input type="checkbox" class="uppermaking-tags" id="makingupper-tags" value="12">태그12
					</td>
				</tr>
				<tr>
					<th>대표 이미지</th>
					<td>
						<input type="file" class="uppermaking-firstimg" id="makingupper-firstimg">
					</td>
				</tr>
			</table>
		</div>
		
		<div class="uppermaking-preview">
			<img src="/resources/images/logo2.png" alt="..." class="img-circle">
		</div>
	</div>
</div>

<%@ include file="../footer.jsp" %>