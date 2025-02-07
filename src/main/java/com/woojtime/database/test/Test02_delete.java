package com.woojtime.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.woojtime.common.MysqlService;

@WebServlet("/db/test/test02/delete")
public class Test02_delete extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String id = request.getParameter("id");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "DELETE FROM `woojin`.`url` WHERE (`id` = ' " + id + "');";
		int count = mysqlService.update(query);
		mysqlService.disconnect();
		
		response.sendRedirect("/db/test/test02.jsp");
		
	}

}
