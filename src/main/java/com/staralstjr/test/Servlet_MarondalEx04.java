package com.staralstjr.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/marondal04")
public class Servlet_MarondalEx04 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.println("<html><head><title>반복</title></head>");
		out.println("<body><ul>");
		
		for(int i = 1; i <= 30; i++) {
			out.println("<li>" + i +"번째 리스트 </li>");
		}
		
		out.println("</ul></body></html>");
		
		
	}

}
