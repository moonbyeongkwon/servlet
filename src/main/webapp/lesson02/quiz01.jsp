<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>

	<%!
		// 1.합계
		public int sum(int end) {
			int sum = 0;
			for (int i = 1; i <= end; i++) {
				sum += i;
			}
			return sum;
		}
	%>

	<h1>1부터 50까지의 합은 <%= sum(50) %></h1>





	<%
		int sum = 0;
		int[] scores = {81, 90, 100, 95, 80};
		for (int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		double ave = sum / (double)scores.length;
		
	%>
	<h1>평균은 <%= ave %></h1><br>
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		for (int i = 0; i < scoreList.size(); i++) {
			if (scoreList.get(i).equals("O")) {
				score += 10;
			}
		}
	
	%>
	<h1>채점 결과는 <%= score %></h1><br>
	
	<%
		String birthDay = "20010820";
		int year = Integer.parseInt(birthDay.substring(0, 4));
		int age = 2024 - year;
	
	%>
	<h1><%= birthDay %>의 나이는 <%= age %>세입니다</h1>
	
</body>
</html>