<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		double height = Integer.parseInt(request.getParameter("height")) / 100.0;
		int weight = Integer.parseInt(request.getParameter("weight"));
		
		double bmi = weight/(height*height);
		
		String state = null;
		if(bmi <= 20){
			state = "저체중";
		}else if(bmi <= 25){
			state = "정상";
		}else if(bmi <= 30){
			state = "과체중";
		}else {
			state = "비만";
		}
	%>
	<div class="container">
		<h1>BMI 측정 결과</h1>
		
		<div class="display-4">당신은 <span class="text-info"> <%=state%> </span> 입니다.</div>
		<div>
			BMI 수치 : <%=bmi %>
		</div>
		
	</div>

</body>
</html>