<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post method</title>
</head>
<body>
	<%
		// nickname을 전달 받고 보여준다.
		String nickname = request.getParameter("nickname");
		
		// 좋아하는 하나의 동물을 전달 받고 보여준다.
		// 고양이, 강아지, 사자
		String animal = request.getParameter("animal");
		
		// 좋아하는 과일을 전달 받고 보여준다.
		// 바나나 딸기 복숭아
		String fruit = request.getParameter("fruit");
	%>
	
	<h3><%= nickname %></h3>
	<h3><%= animal %></h3>
	<h3><%= fruit %></h3>
</body>
</html>