<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, tr, th, td{
		border: 1px solid black;
	}
</style>
</head>
<body>
<%
	String searchMenu = request.getParameter("searchMenu");

	//pointFilter로 true, false
	String pointFilter = request.getParameter("pointFilter");
	
	if(pointFilter == null){
		pointFilter = "false";
	}
	
	

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

<table>
	<thead>
		<tr>
			<th>메뉴</th>
			<th>상호</th>
			<th>별점</th>
		</tr>
	</thead>
	
	<tbody>
					<!--  향샹된 for문 -->
		<%for(Map<String, Object> store: list) { 
			//searchMenu와 store menu가 일치하는 경우
			if(searchMenu.equals(store.get("menu"))){
				Double point = (Double)store.get("point"); // 다운캐스팅
				
				//if(pointFilter.equals("false") || (pointFilter.equals("true") && point >= 4.0)){
				if(pointFilter.equals("false") || point >= 4.0){
				
				//pointFilter가 true이고, 4.0 미만이면 보여주지 말아라.
				//if((!pointFilter.equals("true") && point < 4.0)){
		%>
					<tr>
						<td><%= store.get("menu") %></td>
						<td><%= store.get("name") %></td>
						<td><%= store.get("point") %></td>
					</tr>
				<% }
				 } 
				} %>
	</tbody>
</table>

</body>
</html>