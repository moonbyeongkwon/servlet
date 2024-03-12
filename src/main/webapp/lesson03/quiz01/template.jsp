<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채널 안내</title>
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
header {
	height: 80px;
}

nav {
	height: 50px;
}

.contents {
	min-height: 500px;
}

footer {
	height: 30px;
}

a, a:hover {
	color: #fff
}
</style>
</head>
<body>
	<%
	List<Map<String, String>> list = new ArrayList<>();
	Map<String, String> map = new HashMap<String, String>() {
		{
			put("ch", "5");
			put("name", "SBS");
			put("category", "지상파");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "7");
			put("name", "KBS2");
			put("category", "지상파");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "9");
			put("name", "KBS1");
			put("category", "지상파");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "11");
			put("name", "MBC");
			put("category", "지상파");
		}
	};
	list.add(map);

	map = new HashMap<String, String>() {
		{
			put("ch", "54");
			put("name", "OCN");
			put("category", "영화");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "56");
			put("name", "Screen");
			put("category", "영화");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "57");
			put("name", "Mplex");
			put("category", "영화");
		}
	};
	list.add(map);

	map = new HashMap<String, String>() {
		{
			put("ch", "30");
			put("name", "KBS 드라마");
			put("category", "드라마");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "32");
			put("name", "MBC 드라마");
			put("category", "드라마");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "34");
			put("name", "Olive");
			put("category", "드라마");
		}
	};
	list.add(map);

	map = new HashMap<String, String>() {
		{
			put("ch", "3");
			put("name", "tvN");
			put("category", "예능");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "28");
			put("name", "MBC Every1");
			put("category", "예능");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "48");
			put("name", "JTBC2");
			put("category", "예능");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "49");
			put("name", "E채널");
			put("category", "예능");
		}
	};
	list.add(map);

	map = new HashMap<String, String>() {
		{
			put("ch", "120");
			put("name", "SPOTV");
			put("category", "스포츠");
		}
	};
	list.add(map);
	map = new HashMap<String, String>() {
		{
			put("ch", "121");
			put("name", "KBSN 스포츠");
			put("category", "스포츠");
		}
	};
	list.add(map);
	%>
	<div id="wrap" class="container">
		<header
			class=" d-flex justify-content-center align-items-center">
			<jsp:include page="header.jsp" />>
		</header>
		<nav class="bg-danger d-flex align-items-center">

			<jsp:include page="menu.jsp"></jsp:include>
		</nav>
		<section class="contents">
			<table class="table text-center">
				<thead>
					<tr>
						<th>채널</th>
						<th>채널명</th>
						<th>카테고리</th>
					</tr>
				</thead>
				<tbody>
					<%
						// request param
						String category = request.getParameter("category");
					
					for (Map<String, String> channel : list) {
						// 출력되는 경우: 카테고리 null(전체) 또는 카테고리명 일치
						if (category == null || channel.get("category").equals(category)) {
					%>
					<tr>
						<td><%=channel.get("ch")%></td>
						<td><%=channel.get("name")%></td>
						<td><%=channel.get("category")%></td>
					</tr>
					<%
						}
					}
					%>
				</tbody>
			</table>
		</section>
		<footer
			class="d-flex justify-content-center align-items-center">
			<jsp:include page="footer.jsp" />
		</footer>
	</div>

</body>
</html>