<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		Date now = new Date();
	
		SimpleDateFormat time = new SimpleDateFormat("yyyy년 M월 dd일");
		SimpleDateFormat day = new SimpleDateFormat("HH시 mm분 ss초");
		
		String timeString = time.format(now);
		String dayString = day.format(now);
	%>
	
	<h1>날짜, 시간 링크</h1>
	<div class = "check" id = "blue">
		<a href = "/jsp/Test02_result.jsp?result=<%= timeString %>">현재시간확인</a>
	</div>
	
	
	<div class = "check" id = "green">
		<a href = "/jsp/Test02_result.jsp?result=<%= dayString %>">현재날짜확인</a>
	</div>
</body>
</html>