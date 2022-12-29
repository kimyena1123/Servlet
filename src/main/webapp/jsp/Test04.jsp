<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>사칙연산</h1>
	
	<form method = "POST" action = "/jsp/Test04_result.jsp">
			<input type = "text" name = "number1">
			
			<select name = "calculate">
				<option value = "+">+</option>
				<option value = "-">-</option>
				<option value = "X">X</option>
				<option value = "/">/</option>
			</select>
			
			<input type = "text" name = "number2">
			
			<button type = "submit">계산</button>
	</form>
</body>
</html>