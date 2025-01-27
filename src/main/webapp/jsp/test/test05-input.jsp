<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>
	<form method="post" action="/jsp/test/test05.jsp">
		<h1>길이 변환</h1>
		<div>
			<input type="text" name="cm"> cm
		</div>
		
		<label for="inchCheck">인치</label> <input type="checkbox" id="inchCheck" name="length" value="in">
		<label for="yardCheck">야드</label> <input type="checkbox" id="yardCheck" name="length" value="yard">
		<label for="feetCheck">피트</label> <input type="checkbox" id="feetCheck" name="length" value="ft">
		<label for="meterCheck">미터</label> <input type="checkbox" id="meterCheck" name="length" value="meter">
		
		<button type="submit">변환</button>
	</form>
</body>
</html>