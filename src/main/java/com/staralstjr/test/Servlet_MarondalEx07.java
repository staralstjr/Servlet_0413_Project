package com.staralstjr.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/marondalex07")
public class Servlet_MarondalEx07 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><head><title>주문하기</title></head>");
		out.println("<body>");
		if(!address.contains("서울시")) {
			out.println("<h2>배달 불가 지역입니다.</h2>");
		}else if(card.contains("신한카드")) {
			out.println("<h2>결제 불가 카드</h2>");
		} else {
			out.println("<h3> " + address + "</h3> <hr>");
			out.println("결제금액 " + price + "원");
			
		}
		out.println("</body> </html>");
		
	}
}
