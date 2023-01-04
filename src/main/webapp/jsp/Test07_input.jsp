<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method = "GET" action = "/jsp/Test07_T.jsp">
		<input type = "text" name = "searchMenu">
		<label><input type = "checkbox" name = "pointFilter" value = "true">4점 이하 제외</label>
		
		<br>
		<button type = "submit">검색</button>
	</form>
</body>
</html>