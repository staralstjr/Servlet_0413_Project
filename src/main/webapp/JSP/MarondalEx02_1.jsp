<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간, 날짜</title>
</head>
<body>
	<% 
	String what = request.getParameter("what");
	
	String text = null;
	
	Date now = new Date();
	
	if(what.equals("time")){
		SimpleDateFormat formatter = new SimpleDateFormat("현재 시간 H시 m분 s초");
		text = formatter.format(now);
	}else if(what.equals("date")){
		SimpleDateFormat formatter = new SimpleDateFormat("오늘 날짜 yyyy년 M월 d일");
		text = formatter.format(now);
	}
	
	%>
	<div class="container">
		<div class="display-1"><%=text %></div>	
	</div>
</body>
</html>