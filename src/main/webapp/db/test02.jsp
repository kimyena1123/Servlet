<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.yena.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test02</title>
</head>
<body>
<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	
	//select
	String selectQuery = "SELECT * FROM `site` ORDER BY id DESC;";
	
	ResultSet resultSet = mysqlService.select(selectQuery);
%>

	<h2>즐겨찾기 페이지</h2>
	
	<table border = "1">
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
		<%while(resultSet.next()) { %>
			<tr>
				<td><%= resultSet.getString("name") %></td>
				<td><a href = "<%= resultSet.getString("url") %>"><%= resultSet.getString("url") %></a></td>
				<td><a href = "/db/test02_delete?id=<%= resultSet.getInt("id")%>">삭제</a></td>
			</tr>
		<% } %>
		</tbody>
	</table>
	
	<a href = "/db/test02_input.jsp">추가하기</a>
</body>
</html>