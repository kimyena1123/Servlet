<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>즐겨찾기 추가</h1>
	
	<form method = "GET" action = "/db/test02_insert">
		<label>사이트 명 : </label><br/>
		<input type = "text" name = "siteName"><br/>
		
		<label>사이트 주소</label><br/>
		<input type = "text" name = "siteUrl"><br/>
		
		<button type = "submit">추가</button>	
	
	</form>
	
	<a href = "/db/test02.jsp">목록 보기</a>
</body>
</html>