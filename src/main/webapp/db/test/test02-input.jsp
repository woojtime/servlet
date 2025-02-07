<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>즐겨찾기 추가</h1>
		<form method="post" action="/db/test/test02/create">
			<label>사이트명: </label><input class="form-control col-3" type="text" name="name"> <br>
			<label>사이트 주소: </label><input class="form-control col-5" type="text" name="url"> <br>
			<button class="btn btn-success" type="submit">추가</button>
		</form>
	</div>
</body>
</html>