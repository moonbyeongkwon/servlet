<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추가</title>
</head>
<body>
	
	<form method="post" action="/lesson04/quiz02_insert">
	<h1>즐겨찾기 추가</h1>
	<p>
		사이트명:<br>
		<input type="text" name="name">
	</p>
	<p>
		사이트 주소:<br>
		<input type="text" name="url">
	</p>
	<p>
		<input type="submit" value="추가">
	</p>
	</form>
</body>
</html>