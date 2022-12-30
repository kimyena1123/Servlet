<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	
	int heightInt = Integer.parseInt(height);
	int weightInt = Integer.parseInt(weight);
	
	double bmi = weightInt / ((heightInt / 100.0) * (heightInt / 100.0));
	
	String text = "";
	
	if(bmi <= 20){
		text = "저체중";
	}else if(21 <= bmi && bmi <= 25){
		text = "정상";
	}else if(26 <= bmi && bmi <= 30){
		text = "과체중";
	}else if(bmi >= 31){
		text = "비만";
	}
%>

<h1>BMI 측정 결과<b></h1>
<h1>당신은 <%= text %>입니다.</h1>
<p>bmi수치: <%= bmi %></p>




</body>
</html>