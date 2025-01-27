<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>
<%
		String cm = request.getParameter("cm");	
		int length = Integer.parseInt(cm);
		String[] lengthArray = request.getParameterValues("length");
		
		String lengthString = "";
		
		for(int i = 0; i < lengthArray.length; i++) {
			if(lengthArray[i].equals("in")) {
				lengthString += length * 0.393701 + " in<br>";
			} 
			else if(lengthArray[i].equals("yard")) {
				lengthString += length * 0.0109361 + " yard<br>";
			} 
			else if(lengthArray[i].equals("ft")) {
				lengthString += length * 0.0328084 + " ft<br>";
			} 
			else {
				lengthString += length * 0.01 + " m<br>";
			}
		}
%>
	<h1>변환 결과</h1>
	<h1><%= cm %> cm</h1>
	<hr>
	<h1><%= lengthString %></h1>
</body>
</html>