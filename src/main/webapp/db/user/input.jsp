<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form method="post" action="/db/user/create">
		<label>이름 : </label><input type="text" name="name"> <br>
		<label>생년월일 : </label><input type="text" name="birthday"> <br>
		<label>이메일 : </label><input type="text" name="email"> <br>
		<textarea rows="5" cols="30" name="introduce"></textarea> <br>
		<button type="submit">추가</button>
	</form>

</body>
</html>