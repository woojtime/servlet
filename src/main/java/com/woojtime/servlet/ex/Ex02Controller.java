package com.woojtime.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex02")
public class Ex02Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 1 ~ 10 까지의 합을 구하고 html 들 통해 표현
		int sum = 0;
		for(int i = 1; i <= 10; i++) {
			sum += i;
		}
		out.println(""
				+ "<html>\n"
				+ "	<head><title>합계</title></head>\n"
				+ "	<body>\n"
				+ "		<h2> 합계 : " + sum + "</h2>\n"
				+ "	</body>\n"
				+ "</html>");
	}

}
