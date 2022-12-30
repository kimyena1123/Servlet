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
	//cm 단위, 변환할 단위들
	int length = Integer.parseInt(request.getParameter("length"));

	//인치, 야드, 피트, 미터
	String[] units = request.getParameterValues("unit");
	
	
	String result = "";
	
	for(int i = 0; i < units.length; i++){
		if(units[i].equals("inch")){
			//인치변환
			double inch = length * 0.39;
			//result = result + inch + "in";
			result += inch + "in<br>";
		}else if(units[i].equals("yard")){
			//야드변환
			double yard = length * 0.010936133;
			result += yard + "yard<br>";
		}else if(units[i].equals("feet")){
			//피트 변환
			double feet = length * 0.032808399;
			result += feet + "ft<br>";
		}else if(units[i].equals("meter")){
			//미터 변환
			double meter = length / 100.0;
			result += meter + "m<br>";
		}
	}
%>


</body>
</html>