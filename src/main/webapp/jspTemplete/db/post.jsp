<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.yena.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물건 올리기</title>
<link rel = "stylesheet" href = "/jspTemplete/db/style.css">
</head>
<body>
<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	
	//select 
	String selectQuery = "SELECT * FROM `seller`;";
	
	ResultSet resultSet = mysqlService.select(selectQuery);

%>
	<div class = "container">
		<jsp:include page="header.jsp" />
		<jsp:include page="nav.jsp" />
		
		<section>
			<h1>물건 올리기</h1>
			
			<form method = "GET" action = "/db/all_insert">
			<div class = "inputDiv">
				<select name = "sellerNickname">
					<option value = "">--아이디 선택--</option>
				<%while(resultSet.next()) { %>
					<option value = "<%= resultSet.getInt("id") %>"><%= resultSet.getString("nickname") %></option>
				<% } %>
				</select>
				
				<input type = "text" placeholder = "제목" name = "goodsTitle">
				
				<input type = "text" placeholder = "가격" name = "goodsPrice">
				<button>원</button><br>
			</div>
			
				<textarea name = "goodsDescription"></textarea><br>
					
				 img url<input type = "text" name = "goodsUrl">
				 <button type = "submit">저장</button>
			</form>
		</section>
		<jsp:include page="footer.jsp" />
	</div>
</body>	
</html>