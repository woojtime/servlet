<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.woojtime.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
	<%
		MysqlService mysqlService = new MysqlService();
	
		mysqlService.connect();
			
		List<Map<String, Object>> resultList = mysqlService.select("SELECT * FROM `url` ORDER BY `id` DESC");
	%>
	
	<div class="container">
	
		<h3>즐겨찾기 목록</h3>
		
		<table class="table text-center">
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
			<% for(Map<String, Object> result:resultList) { %>
				<tr>
					<td><%= result.get("name") %></td>
					<td><a href="<%= result.get("url") %>"><%= result.get("url") %></a></td>
					<td><a href="/db/test/test02/delete?id=<%= result.get("id") %>">삭제</a></td>
				</tr>
			<% } %>
			</tbody>
		</table>
	</div>
</body>
</html>