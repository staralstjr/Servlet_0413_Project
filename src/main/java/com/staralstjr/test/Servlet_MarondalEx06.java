package com.staralstjr.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/marondal06")
public class Servlet_MarondalEx06 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		
		
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		PrintWriter out = response.getWriter();
		
		out.println("{");
		out.println("\"addiction\":" + (number1+number2) + ",");
		out.println("\"subtraction\":" + (number1 - number2)+ ",");
		out.println("\"multiplication\":" + (number1 * number2)+ ",");
		out.println("\"division\":" + (number1/number2));
		out.println("}");
		
		
//		if(num1 > num2) {
//			out.println("addiction : " + (num1+num2));
//			out.println("subtraction : " + (num1 - num2));
//			out.println("multiplication : " + (num1*num2));
//			out.println("division : " + (num1/num2));
//		}else {
//			out.println("addiction : " + (num1+num2));
//			out.println("subtraction : " + (num2 - num1));
//			out.println("multipication : " + (num1*num2));
//			out.println("division : " + (num2/num1));
		}
	}


