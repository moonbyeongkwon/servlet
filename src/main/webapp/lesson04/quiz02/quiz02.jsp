<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.commmon.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
</head>
<body>
<%
	// DB 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select * from `bookmark`";
	ResultSet result = ms.select(selectQuery);
	
%>

	<h1>목록</h1>
	
	<table border="1">
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%
			while (result.next()) {
		%>
			<tr>
				<td><%= result.getString("name") %></td>
				<td><a href="<%= result.getString("url")%>"><%= result.getString("url") %></a></td>
				<td><a href="#">탈퇴</a></td>
			</tr>
		<%
			}
		%>	
		</tbody>
	</table>
	
<%
	// 연결 해제
	ms.disconnect();
%>
</body>
</html>