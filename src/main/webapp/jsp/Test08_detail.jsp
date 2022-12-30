<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.container{
		display: flex;
	}
	.bookInfo{
		display: flex;
		flex-direction: column;
	}
	img{
		width: 280px;
		height: 350px;
	}
</style>
</head>
<body>
<%
	String title = request.getParameter("title");
	String author = request.getParameter("author");
	String publisher = request.getParameter("publisher");
	String img = request.getParameter("img");
%>
	<div class= "container">
		<h3><img src = "<%= img %>"></h3>
		
		<div class = "bookInfo">
			<h2><%= title %></h2>
			<h2><%= author %></h2>
			<h2><%= publisher %></h2>
		</div>
	</div>
	
	
</body>
</html>