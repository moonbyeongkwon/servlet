package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet {

	@Override public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		
		//Request Parameter
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		PrintWriter out = response.getWriter();
//		out.println("유저 아이디:" + userId);
//		out.println("유저 네임:" + name);
//		out.println("유저 나이:" + age);
		
		// JSON(Javascript Object Notation)으로 response 구성
		// {"user_id":"slash", "name":"문병권", "age":26}
		out.print("{\"user_id\":\"" + userId + "\", \"name\":\""
				+ name + "\", \"age\":" + age + "}");
	}
}
