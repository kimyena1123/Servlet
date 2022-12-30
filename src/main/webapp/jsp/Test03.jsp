<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>체격조건 입력</h1>
	
	<form method = "GET" action = "/jsp/Test03_result.jsp">
		<input type = "text" placeholder = "174" name = "height">cm
		<input type = "text" placeholder = "69" name = "weight">kg
		<button type = "submit">계산</button>
	</form>
</body>
</html>