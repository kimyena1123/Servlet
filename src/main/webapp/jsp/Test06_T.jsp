<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, tr, td{
		border: 1px solid black;
	}
</style>
</head>
<body>
<%
	List<String> goodsList = Arrays.asList(new String[]{ 
	    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
	});
%>

	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>품목</th>
			</tr>
		</thead>
		<tbody>
		<% for(int i = 0; i < goodsList.size(); i++){
			String good = goodsList.get(i);
		%>
			<tr>
				<td><%= i + 1 %></td>
				<td><%= good %></td>
			</tr>
		<% } %>
		</tbody>
	</table>
</body>
</html>