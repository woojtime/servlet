<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 수치</title>
</head>
<body>
	<form method="get" action="/jsp/test/test02.jsp">
		<h1>체격 조건 입력</h1>
		<input name="height"/>cm <input name="weight"/>kg
		<button type="submit">계산</button>
	</form>
</body>
</html>