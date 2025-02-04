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
		<div class="d-flex border border-success p-3">
			<div>
				<img width="150" alt="IU" src="<%= artistInfo.get("photo") %>"/>
			</div>
			<div class="ml-3">
				<h4><%= artistInfo.get("name") %></h4>
				<div><%= artistInfo.get("agency") %></div>
				<div><%= artistInfo.get("debute") %> 데뷔</div>
			</div>
		</div>
		<div class="mt-3">
			<h3>곡 목록</h3>
			<table class="table text-center">
				<thead>
					<tr>
						<th>no</th>
						<th>제목</th>
						<th>앨범</th>
					</tr>
				</thead>
				<tbody>
				<%
				 for(Map<String, Object> music : musicList) {
				%>
					<tr>
						<td><%= music.get("id") %></td>
						<td><a href="/jsp/test/test10-detail.jsp?id=<%= music.get("id")%>"><%= music.get("title") %></a></td>
						<td><%= music.get("album") %></td>
					</tr>
				<% } %>
				</tbody>
			</table>
		</div>
		<hr>
		<footer>Copyright 2025. melong All Rights Reserved.</footer>
	</div>
</body>
</html>