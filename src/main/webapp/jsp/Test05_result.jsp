<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div{
	font-size: 20px;
	font-weight: 600;
}
</style>
</head>
<body>
<%
	String lengthString = request.getParameter("length");

	int num = Integer.parseInt(lengthString);

	String[] typeArray = request.getParameterValues("type");
	
	//인치 피터 야드
	//1cm -> 0.394inch

	double result = 0;
	String print = "";
	
	for(int i = 0; i < typeArray.length; i++){
		if(typeArray[i].equals("inch")){
			result = num * 0.39;
			print += result + "in<br>";
		}
		if(typeArray[i].equals("yard")){
			result = num / 91.44;
			print += result + "yard<br>";
		}
		if(typeArray[i].equals("ft")){
			result = num * 0.0328084;
			print += result + "ft<br>";
		}
		if(typeArray[i].equals("m")){
			result = num * 0.01;
			print += result + "m<br>";
		}
	}

%>

	<h1>변환 결과</h1>
	<div><%= num %>cm</div><hr>
	<div><%= print %><br></div>
</body>
</html>