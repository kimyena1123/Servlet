<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.printStore{
		display: flex;
		justify-content: space-around;
	}
</style>
</head>
<body>
<%
List<Map<String, Object>> list = new ArrayList<>();

Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
list.add(map);

map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
list.add(map);
map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
list.add(map);
%>

<div class = "printStore">
	<h2>메뉴</h2>
	<h2>상호</h2>
	<h2>별점</h2>
</div>
<br>

<!-- 
<% for(int i = 0; i < list.size(); i++){ %>
		<h5><%= list.get(i) %></h5>
<% } %>
-->


<% for(Map<String, Object> mapdata : list) {%>
<div class = "printStore">
	<h3> <%= mapdata.get("name") %></h3>
	<h3> <%= mapdata.get("menu") %></h3>
	<h3> <%= mapdata.get("point") %></h3>
</div>
<% } %>


<hr>
</body>
</html>