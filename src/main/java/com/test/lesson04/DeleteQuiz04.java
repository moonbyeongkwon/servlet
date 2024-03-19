package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.commmon.MysqlService;

@WebServlet("/lesson04/quiz02_delete")
public class DeleteQuiz04 extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String deleteQuery = "delete from `bookmark` where `id`=" + id;
		
		try {
			mysqlService.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		mysqlService.disconnect();
		response.sendRedirect("/lesson04/quiz02/quiz02.jsp");
	}
}
