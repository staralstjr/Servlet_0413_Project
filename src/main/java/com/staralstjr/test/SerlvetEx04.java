package com.staralstjr.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex04")
public class SerlvetEx04 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		//doPost
		
		// 아이디
		// 이름
		// 생년월일
		// 이메일
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><head><title>회원정보</title></head>");
		out.println("<body>");
		out.println("<table border=1>");
		out.println("<tr><th><h3>아이디</h3></th><td>" + userId + "</td></tr>");
		out.println("<tr><th><h3>이름</h3></th><td>" + name + "</td></tr>");
		out.println("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
		out.println("<tr><th>이메일</th><td>" + email +"</td></tr>");
		out.println("</table> </body> </html>");
		
	}

}
