<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.yena.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<link rel = "stylesheet" href = "/jspTemplete/db/style.css">
</head>
<body>
<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	
	//select 
	String selectQuery = "SELECT * FROM `seller` JOIN `used_goods` ON seller.id = used_goods.sellerId;";
	
	ResultSet resultSet = mysqlService.select(selectQuery);

%>

	<div class = "container">
		<jsp:include page="header.jsp" />
		<jsp:include page="nav.jsp" />
		
		<section style = "display: flex; justify-content: center;">

			<div class = "goods" style = "display: flex; flex-wrap: wrap; border: 2px solid purple;">
				<% while(resultSet.next()){ %>
				
					<div class = "product" style = "border: 3px solid orange; margin: 5px 10px;">
						<div class = "img" style = "width: 90%; height: 70%; border: 1px solid black; margin: 0 auto; display: flex; justify-content: center; align-items: center; margin-top: 5px;">	
							<% if(resultSet.getString("used_goods.picture") != null){ %>
							<img width = "100%" height = "100%" src = "<%= resultSet.getString("used_goods.picture") %>" alt = "사진1" style = "border: 1px solid black;">
							<% } else {%>
							<h2>이미지 없음</h2>
							<% } %>
						</div>
						<div class = "detail" style = "width: 90%; margin: 0 auto;">
							<h3><%= resultSet.getString("used_goods.title") %></h3>
							<h4 style = "margin: 5px 0;">가격: <%= resultSet.getString("used_goods.price") %></h4>
							<h4>판매자 : <%= resultSet.getString("seller.nickname") %></h4>
						</div>
					</div>
				<% } %>
			</div> <!--  goods div 끝 -->
			
		</section>
		
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>