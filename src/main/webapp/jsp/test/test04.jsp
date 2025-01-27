<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산</title>
</head>
<body>
<%
		String number1String = request.getParameter("number1");
		String number2String = request.getParameter("number2");
		String symbol = request.getParameter("symbol");
		double number1 = Double.parseDouble(number1String);
		double number2 = Double.parseDouble(number2String);
		
		String result = "";
		if(symbol.equals("X")) {
			result = Double.toString(number1 * number2);
		} 
		else if(symbol.equals("+")) {
			result = Double.toString(number1 + number2);
		} 
		else if(symbol.equals("-")) {
			result = Double.toString(number1 - number2);
		} 
		else {
			result = Double.toString(number1 / number2);
		}
%>
	<h1>계산 결과</h1>
	<h1><%= number1String %> <%= symbol %> <%= number2String %> = <%= result %></h1>
</body>
</html>