<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.text.SimpleDateFormat"%>
<%@ page import = "java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜 시간 출력</title>
</head>
<body>
	<%
	Date date = new Date();
	SimpleDateFormat formatter1 = new SimpleDateFormat("yyyy년 M월 d일");
	SimpleDateFormat formatter2 = new SimpleDateFormat("H시 m분 s초");
	String dateString = "오늘 날짜 " + formatter1.format(date);
	String hourString = "현재 시간 " + formatter2.format(date);
	
	String what = request.getParameter("what");
	
	String result = null;
	if(what.equals("date")) {
		result = dateString;
	} else {
		result = hourString;
	}
	%>
	
	<h1><%= result %></h1>
</body>
</html>