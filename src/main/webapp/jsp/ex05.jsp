<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
<%
	//Date now = new Date();

	//date와 다르게 시간 계산이 가능하다
	//오늘 날짜 정보를 얻어온다.
	Calendar today = Calendar.getInstance(); // 객체를 얻어온다.	
	
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
	//String formatString = formatter.format(today.getTime()); //calendar 객체 안에 date 객체를 가져온다. => 연관된 문자열을 리턴한다.
	
	//하루빼기
	//add(param1, param2) :  두가지 인자가 들어간다. 
	today.add(Calendar.DATE, -53); 
	today.add(Calendar.MONTH, 8); // 일에서 53을 뺸 다음에 달에서 8을 더하기
	
	String formatString = formatter.format(today.getTime());
			
%>

	<div><%= formatString %></div>
</body>
</html>