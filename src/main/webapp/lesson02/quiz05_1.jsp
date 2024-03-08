<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
</head>
<body>
	<%
		int cm = Integer.parseInt(request.getParameter("cm")) ;
		String unit[] = request.getParameterValues("unit");
		
		
	%>
	

	<h1>길이 변환 결과</h1>
	<b><%= cm %>cm</b>
	<hr>
	<h2>
	<%
		for (int i = 0; i < unit.length; i++) {
			if (unit[i].equals("inch")) {
				double in = cm * 0.393701;
				out.print(in + "in<br>");
			} else if (unit[i].equals("yard")) {
				double yd = cm * 0.0109361;
				out.print(yd + "yd<br>");
			} else if (unit[i].equals("feet")) {
				double ft = cm * 0.0328084;
				out.print(ft + "ft<br>");
			} else if (unit[i].equals("meter")) {
				double m = cm * 0.01;
				out.print(m + "m<br>");
			}
		}
	%>
	</h2>

</body>
</html>