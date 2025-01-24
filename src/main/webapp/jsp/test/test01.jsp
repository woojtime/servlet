<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>
	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		for(int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
	%>
	<h1>점수 평균은 <%= (double) sum/scores.length %> 입니다.</h1>
	
	<% 
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		for(String answer:scoreList) {
			if(answer.equals("O")) {
				score += 1;
			}
		}
		score = score / scoreList.size() * 100;
	%>
	<h1>체점 결과는 <%= score %> 입니다.</h1>
	
	<%! 
	public int sumAll(int number) {
		int sum = 0;
		for(int i = 1; i <= number; i++) {
			sum += i;
		}
		
		return sum;
	}
	%>
	<h1>1부터 50까지의 합은 <%= sumAll(50) %> 입니다.</h1>
</body>
</html>