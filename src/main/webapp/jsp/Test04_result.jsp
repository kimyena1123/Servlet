<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산 결과</title>
</head>
<body>

<%
	String number1 = request.getParameter("number1");
	String number2 = request.getParameter("number2");
	
	int num1 = Integer.parseInt(number1);
	int num2 = Integer.parseInt(number2);
	
	/*
	* 이렇게도 할 수 있다!!
	* String으로 매개변수 받기와 int형으로 바꾸기를 한 번에!!
	
	int number1 = Integer.parseInt(request.getParameter("number1"));
	int number2 = Integer.parseInt(request.getParameter("number2"));
	*/
	
	String calculate = request.getParameter("calculate");
	
	int result = 0;
	
	if(calculate.equals("+")){
		result = (num1 + num2);
	}else if (calculate.equals("-")){
		result = (num1 - num2);
	}else if(calculate.equals("X")){
		result = (num1 * num2);
	}else{
		result = (num1 / num2);
	}
	
	
%>

	<h1>계산 결과</h1>
	<div><%= number1%> <%= calculate %> <%= number2 %> = <%= result %></div>
</body>
</html>