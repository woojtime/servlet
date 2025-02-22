<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
<% List<Map<String, Object>> list = new ArrayList<>();
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
list.add(map); %>

<%
		String input = request.getParameter("input");
		String checkbox = request.getParameter("check");	
%>
<h1 class="d-flex justify-content-center">검색 결과 <%= input %></h1>
<table class="table" border="1">
		<thead>
			<tr>
				<th>메뉴</th>
				<th>상호</th>
				<th>별점</th>
			</tr>
		</thead>
		<tbody>
			<% for(Map<String, Object> store : list) { 
				Object menu = store.get("menu");
				if(checkbox == null) {
					if(menu.equals(input)) {%>
						<tr>
							<td><%= store.get("menu") %></td>
							<td><%= store.get("name") %></td>
							<td><%= store.get("point") %></td>
						</tr>
					<% }
				} else {
					if(menu.equals(input) && (double) store.get("point") >= 4.0) {%>
					<tr>
						<td><%= store.get("menu") %></td>
						<td><%= store.get("name") %></td>
						<td><%= store.get("point") %></td>
					</tr>
				<% }
				}%>
			<% } %>
		</tbody>
</table>
</body>
</html>