package com.staralstjr.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/marondalex10")
public class Servlet_MarondalEx10 extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();

	
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		out.println("<html><head><title>로그인 화면</title></head>");
		out.println("<body>");
		if(userMap.get("userId").equals(userId) && userMap.get("password").equals(password)) {
			out.println("<h1>권민석님 환영합니다.</h1>");
		}else if(userMap.get("userId").equals(userId)) {
			out.println("<h1>비밀번호가 올바르지 않습니다.</h1>");
		}else if(userMap.get("password").equals(password)) {
			out.println("<h1>아이디가 올바르지 않습니다.</h1>");
		}
		out.println("</body></html>");
		
	}
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("userId", "staralstjr");
	        put("password", "skc123123!");
	    }
	};
}
