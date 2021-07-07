<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java 제어문 활용</title>
</head>
<body>
	<%
		// Map 성적관리
		// {"korea" = 85, "math" = 90}
	
		Map<String, Integer> scoreMap = new HashMap<>();
		scoreMap.put("korean",85);
		scoreMap.put("math",72);
		scoreMap.put("english",72);
		scoreMap.put("science",75);
	%>
	<table border = "1">
		<%
			Set<String> keys = scoreMap.keySet();
			for(String key: keys){
		%>
		<tr>
			<td><%
				if(key.equals("korean")){
					%>
					<!-- html -->
					국어
					<% 
				// 자바
			}
			%>
			<%
				// 자바
				if(key.equals("math")){
					out.println("수학");
				}else if(key.equals("english")){
					out.println("영어");
				}
			%>
			</td>
			<td><%=scoreMap.get(key) %></td>
		</tr>
		<% } %>
		<tr>
			<td>영어</td>
			<td><%=scoreMap.get("english") %></td>
		</tr>
	</table>

</body>
	
</html>