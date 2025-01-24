<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 수치</title>
</head>
<body>
	<%
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		
		int cm = Integer.parseInt(height);
		int kg = Integer.parseInt(weight);
		
		double BMI =  kg / ((cm / 100.0) * (cm / 100.0));
		
		String result;
		
		if(BMI<18.5) {
			result = "저체중";
		}
		else if(BMI<25) {
			result = "정상";
		}
		else if(BMI<30) {
			result = "과체중";
		} else {
			result = "비만";
		}
		
	%>
	<h1>BMI 측정 결과</h1>
	<h1>당신은 <%= result %> 입니다.</h1>
	<h1>BMI 수치 : <%= BMI %></h1>
</body>
</html>