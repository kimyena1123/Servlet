<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<link rel = "stylesheet" href = "/jspTemplete/Test02/music.css">
<%
String musicId = request.getParameter("musicId");

// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
   
    String searchTitle = request.getParameter("searchTitle");
%>
    
<section>
	<div class = "bigDiv">
		<div class = "text">
			<% if(musicId == null && searchTitle == null) { %>
			
				<div class = "singInfo">
					<div class = "imgDiv">
						<img src = "<%= artistInfo.get("photo")%>">
					</div>
					
					<div class = "detail">
						<h1><%= artistInfo.get("name") %></h1>
						<p><%= artistInfo.get("agency") %></p>
						<p><%= artistInfo.get("debute") %>데뷔</p>				
					</div>
				</div>
			<% } else if(musicId != null){ //앨범을 누른 경우 -> 태그 -> musicId가 있는경우
					
				int musicInt = Integer.parseInt(musicId);
				
				for(Map<String,Object> music:musicList) {
						
						int id = (int)music.get("id");
						int musicTime = (int)music.get("time");
						int minute = musicTime / 60;
						int seconds = musicTime % 60;
						
						if(id == musicInt){ // 둘 다 int형으로 비교.
			%>
						<!-- <h1>music.id: <%= music.get("id") %></h1>
						<h1>musicId: <%= musicId %></h1> -->
						
							<div class = "singInfo">
								<div class = "imgDiv">
									<img src = "<%= music.get("thumbnail")%>">
								</div>
						
								<div class = "detail">
									<h1><%= music.get("title") %></h1>
									<h3><%= music.get("singer") %></h3>
									<h4>앨범<%= music.get("album") %></h4>
									<h4>재생시간<%= minute %>.<%= seconds %></h4>
									<h4>작곡가 <%= music.get("composer") %></h4>
									<h4>작사가 <%= music.get("lyricist") %></h4>						
								</div>
							</div>
					<% } %>
				<% } %>
			<% } %>
		</div>
	</div>
</section>