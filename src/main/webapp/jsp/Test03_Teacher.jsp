<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI Teacher Code</title>

<!-- Bootstrap CDN -->
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</head>
<body>

<%
	//키와 몸무게
	String heightString = request.getParameter("height");
	String weightString = request.getParameter("weight");
	
	int height = Integer.parseInt(heightString);
	int weight = Integer.parseInt(weightString);
	
	double bmi = weight / ((height / 100.0) * (height / 100.0));
	
	String status = null;

	if(bmi <= 20){
		status = "저체중";
	}else if(bmi <= 25){
		status = "정상";
	}else if(bmi <= 30){
		status = "과체중";
	}else{
		status = "비만";
	}
%>

	<div class = "container">
		<h1>BMI 측정 결과</h1>
		
		<div class = "display-4">당신은 <span class = "text-info"> <%= status %> </span>입니다</div>
		<div>BMI 수치: <%= bmi %></div>
		
	</div>
</body>
</html>