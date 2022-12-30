<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSP 기본문법</h1>
	
	<% 
		//자바 주석
		//1부터 10까지의 합 구하기
		int sum = 0;
		for(int i = 1; i <= 10; i++){
			sum += i;
		}
	%>
	
	<h3>합계 : <%= sum %></h3>
	
	<input type = "text" value = "<%= sum %>">
	
	<!-- HTML 주석 -->
	<%-- JSP 주석 --%>
	
	<%
		//동물 이름 리스트
		List<String> animals = new ArrayList<>();
		animals.add("dog");
		animals.add("cat");
	%>
	
	<h3><%= animals.get(0) %></h3>
	<h3><%= animals.get(1) %></h3>
	
	<%-- 메소드 만들기 --%>
	<%!
		//Hello World 문자열을 리턴하는 메소드
		public String getHellowWorld(){
		
		return "Hello World";
	}
	%>
	
	<h3><%= getHellowWorld() %></h3>
	
</body>
</html>