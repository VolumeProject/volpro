<%@page import="org.springframework.ui.Model"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<div class="container">

	
	
	<h1>Youtube Videos</h1>
    <ul>
        <% for (String videoUrl : (List<String>) request.getAttribute("videos")) { %>
            <li><a href="<%= videoUrl %>"><%= videoUrl %></a></li>
        <% } %>
    </ul>
</div>
