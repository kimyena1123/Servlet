<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선생님ㅋ드</title>
</head>
<body>
	<div class = "container">
		<h1>길이 변환</h1>
		
		<form method = "POST" action = "/jsp/Test05_T.jsp">
			<div>
				<input type = "text">cm
			</div>
			
			<label>인치 <input type = "checkbox" name = "unit" value = "inch"></label>
			<label>야드 <input type = "checkbox" name = "unit" value = "yard"></label>
			<label>피트 <input type = "checkbox" name = "unit" value = "feet"></label>
			<label>미터 <input type = "checkbox" name = "unit" value = "meter"></label>
			
			<button type = "submit">변환</button>
			
		</form>
	</div>
</body>
</html>