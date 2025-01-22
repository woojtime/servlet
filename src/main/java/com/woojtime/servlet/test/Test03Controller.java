package com.woojtime.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String dateTimeString = formatter.format(date);
		
		PrintWriter out = response.getWriter();
		
		out.println(""
				+ "<html>\n"
				+ "	<head><title>고양이가 야옹해</title></head>\n"
				+ "	<body>\n"
				+ "		<h1>[단독]고양이가 야옹해</h1>\n"
				+ "		<p>기사 입력시간: " + dateTimeString + "</p>"
				+ "		<hr>"
				+ "		<p>끝</p>"
				+ "	</body>\n"
				+ "</html>");
	}

}
