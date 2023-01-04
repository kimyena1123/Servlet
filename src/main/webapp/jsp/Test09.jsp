<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test09</title>
</head>

<style>
	.container{
		display: flex;
		
	}
	.time{
		color: red;
	}
</style>
<body>
<%
	Calendar time = Calendar.getInstance();

	SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
	
	String today = formatter.format(time.getTime());
	
	//+100일
	
	
	
	
%>

<h1>오늘부터1일</h1>

<div class = "container">
	
	<% for(int i = 99; i <= 1000; i+= 100) { 
		time.add(Calendar.DATE, i);
		String day = formatter.format(time.getTime());
		time.add(Calendar.DATE, -i);
	%>
	
		<div class = "container">
			<div class = "number"></div>
				<h1 class = "day"><%= i + 1 %>일 : </h1>
				<h1 class = "time"><%= day %></h1>
			</div>
		</div>
	<% } %>
</div>
</body>
</html>