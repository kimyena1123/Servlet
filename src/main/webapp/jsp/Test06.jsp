<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#container{

	}
	.goods{
		display: flex;
		justify-content: space-around;
	}
</style>
</head>

<body>
<%
	List<String> goodsList = Arrays.asList(new String[]{ 
		    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});

	int cnt = 1;
%>
	
<div id = "container">
<hr>
	<div class = "goods">
		<h2>번호</h2>
		<h2>품목</h2>
	</div>
<hr>
	<% for(String good:goodsList){ %>
	<div class = "goods">
		<h2><%= cnt %></h2>
		<h2><%= good %></h2>
	</div>
	<hr>
	
	<%
		cnt++;
		} 
	%>
</div>


</body>
</html>