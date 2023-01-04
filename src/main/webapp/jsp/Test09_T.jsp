<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Calendar today = Calendar.getInstance();

	SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
%>

	<h1>오늘부터 1일</h1>

	<%
		//오늘이 0일 -> 오늘이 1일
		today.add(Calendar.DATE, -1);
		
		for(int i = 1; i <= 10; i++){
			today.add(Calendar.DATE, 100);
		
			//날짜정보로 만들어진 문자열을 리턴해준다.
			String dateString = formatter.format(today.getTime());
	%>

	<div>
		<%= i %>00일 : <%= dateString %>
	</div>
	<% } %>



</body>
</html>