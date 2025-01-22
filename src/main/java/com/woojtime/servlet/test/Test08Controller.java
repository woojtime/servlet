package com.woojtime.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test08")
public class Test08Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String search = request.getParameter("search");
		
		out.println(""
				+ "<html>"
				+ "	<head><title>정보</title></head>"
				+ "	<body>");
		
		for(String str : list) {
			if(str.contains(search)) {
				for(int i = 0; i < str.split(search).length; i++) {
					out.println(str.split(search)[i]);
					if (i != str.split(search).length - 1) {
						out.println("<b>" + search + "</b>");
					}
				}
				out.println("<hr>");
			}
		}
		
		out.println(""
				+ "	</body>"
				+ "</html>");
	}
}
