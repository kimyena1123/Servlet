<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.booksInfo{
		display: flex;
		flex-direction: column;
		justify-content: space-evenly;
	}
	.bookInfo{
		display: flex;
		
	}
	img{
		width: 100px;
		height: 150px;
	}
	h3{
		margin-right: 50px;
	}
	h2{
		margin-left: 100px;
	}
</style>
</head>
<body>

<%
List<Map<String, Object>> list = new ArrayList<>();
Map<String, Object> map = new HashMap<String, Object>() {
    { 
        put("id", 1000);
        put("title", "아몬드"); 
        put("author", "손원평"); 
        put("publisher", "창비");
        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
    } 
};
list.add(map);

map = new HashMap<String, Object>() {
    { 
        put("id", 1001);
        put("title", "사피엔스"); 
        put("author", "유발 하라리"); 
        put("publisher", "김영사");
        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
    } 
};
list.add(map);

map = new HashMap<String, Object>() {
    { 
        put("id", 1002);
        put("title", "코스모스"); 
        put("author", "칼 세이건"); 
        put("publisher", "사이언스북");
        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
    } 
};
list.add(map);

map = new HashMap<String, Object>() {
    { 
        put("id", 1003);
        put("title", "나미야 잡화점의 기적"); 
        put("author", "히가시노 게이고"); 
        put("publisher", "현대문학");
        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
    } 
};
list.add(map);
%>

<div class = "booksInfo">
<% for(Map<String, Object> mapdata:list) { %>
<hr>
	<div class = "bookInfo">
		<h3><%= mapdata.get("id") %></h3>
		<h3><img src = "<%= mapdata.get("image") %>"></h3>
		<h2><a href = "/jsp/Test08_detail.jsp?img=<%= mapdata.get("image") %>&title=<%= mapdata.get("title") %> &author=<%= mapdata.get("author") %>&publisher=<%= mapdata.get("publisher") %>"><%= mapdata.get("title") %></a></h2>
	</div>
<% } %>

</div>


</body>
</html>