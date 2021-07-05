package com.staralstjr.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex02")
public class ServletEx02 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		
		// 1~10 까지의 합을 계산해서 전달하는
		int sum = 0;
		for(int i = 0; i <= 10; i++) {
			sum += i;
		}
		
		PrintWriter out = response.getWriter();
		
		out.println("<html> <head> <title>합계</title> </head>");
		out.println("<body> 합계 : " + sum + "</body></html>");
	}
	

}
