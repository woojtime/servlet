<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멜롱 사이트</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
    
    String idStr = request.getParameter("id");
    String title = request.getParameter("title");
    Map<String, Object> info = null;
    for(Map<String, Object> music : musicList) {
    	int id = 0;
    	if(idStr != null) {
    		id = Integer.parseInt(idStr);
    	}
    	
    	int musicId = (Integer)music.get("id");
    	
    	if((id != 0 && musicId == id) || (title != null && music.get("title").equals(title))) {
    		info = music;
    		break;
    	}
    }
%>
	<div class="container">
		<div class="d-flex">	
			<h1 class="text-success">Melong</h1>
			<div class="search d-flex col-10 align-items-center">
				<form method="get" action="/jsp/test/test10-detail.jsp" class="col-6">
					<div class="input-group">
						<input class="form-control" type="text" name="title"/>
						<div class="input-group-append">
							<button class="btn btn-success" type="submit">검색</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<nav class="main-menu">			
			<ul class="nav font-weight-bold">
				<li class="nav-item"><a href="/jsp/test/test10.jsp" class="nav-link text-dark">멜롱챠트</a></li>
				<li class="nav-item"><a href="/jsp/test/test10.jsp" class="nav-link text-dark">최신음악</a></li>
				<li class="nav-item"><a href="/jsp/test/test10.jsp" class="nav-link text-dark">장르음악</a></li>
				<li class="nav-item"><a href="/jsp/test/test10.jsp" class="nav-link text-dark">멜롱DJ</a></li>
				<li class="nav-item"><a href="/jsp/test/test10.jsp" class="nav-link text-dark">뮤직어워드</a></li>
			</ul>
		</nav>
		<h3>곡 정보</h3>
		<%
			int time = (Integer)info.get("time");
		%>
		<div class="d-flex border border-success p-3">
			<div>
				<img width="150" alt="IU" src="<%= info.get("thumbnail") %>"/>
			</div>
			<div class="ml-3">
				<h4><%= info.get("title") %></h4>
				<div><%= info.get("singer") %></div>
				<div>앨범 : <%= info.get("album") %></div>
				<div>재생 시간 : <%= time / 60 %> : <%= time % 60 %></div>
				<div>작곡가 : <%= info.get("composer") %></div>
				<div>작사가 : <%= info.get("lyricist") %></div>
			</div>
		</div>
		<h3>가사</h3>
		<hr>
		<div>가사 정보 없음</div>
		<hr>
		<footer>Copyright 2025. melong All Rights Reserved.</footer>
	</div>
</body>
</html>