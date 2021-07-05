package com.staralstjr.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/marondalex09")
public class Servlet_MarondalEX09 extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
	
	PrintWriter out = response.getWriter();
	
	String name = request.getParameter("name");
	String text = request.getParameter("text");
	
	out.println("<html><head><title>입사지원</title></head>");
	out.println("<body>");
	out.println("<h2>" + name + "님 지원이 완료되셨습니다.</h2>");
	out.println("<hr>");
	out.println("지원 내용<br>" + text + "</body>");
	out.println("</html>");
	
	}
}
