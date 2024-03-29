<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>melong</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>

<style>
#wrap {
	width: 1200px;
	margin: auto;
}

header {
	height: 100px;
}

nav {
	height: 40px;
}

.contents {
	min-height: 500px;
}

footer {
	height: 200px;
}
a, a:hover {
	text-decoration:none;
}
</style>
</head>
<body>


	<div id="wrap" class="">
		<header class=" d-flex align-items-center">
			<jsp:include page="header.jsp" />
		</header>
		<nav class=" d-flex">
			<jsp:include page="menu.jsp" />
		</nav>
		<section class="contents">
			<jsp:include page="list.jsp" />
		</section>
		<footer class="">
			<jsp:include page="footer.jsp" />
		</footer>

	</div>
</body>
</html>