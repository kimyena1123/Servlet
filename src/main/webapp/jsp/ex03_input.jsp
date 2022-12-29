<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03_input 페이지</title>
</head>
<body>

	<form method = "POST" action = "/jsp/ex03.jsp">
		<label>닉네임</label>
		<input type = "text" name = "nickname">
		
		<br>
		
		<h3>강아지 or 고양이 or 사자</h3>
		<label><input type = "radio" name = "animal" value = "dog">강아지</label>
		<label><input type = "radio" name = "animal" value = "cat">고양이</label>
		<label><input type = "radio" name = "animal" value = "lion">사자 </label>
		
		<h3>좋아하는 과일을 선택하세요</h3>
		<select name = "fruit">
			<option value = "banana">바나나</option>
			<option value = "peach">복숭아</option>
			<option>딸기</option>
		</select>
		
		<h3>좋아하는 음식을 모두 고르세요</h3>
		<label><input type = "checkbox" name = "food" value = "민초">민트초코</label>
		<label><input type = "checkbox" name = "food" value = "피자">하와이안 피자</label>
		<label><input type = "checkbox" name = "food" value = "벌레">번데기</label>
		
		<button type = "submit">입력</button>
	</form>
</body>
</html>