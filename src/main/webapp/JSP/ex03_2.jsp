<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String hobby = request.getParameter("hobby");
		String pet = request.getParameter("pet");
		String[] foodArray = request.getParameterValues("food");
		String fruit = request.getParameter("fruit");
	%>
	
	<table border="1">
		<tr>
			<th>취미</th>
			<td><%=	hobby %></td>
		</tr>
		<tr>
			<th>반려동물</th>
			<td><%= pet %></td>
		</tr>
		<tr>
			<th>좋아하는 음식</th>
			<%-- pizza, pupa --%>
			<td>
				<%	
					if(foodArray != null){
						String foodString = "";
						for(String food : foodArray){
							foodString += food + ",";
						}
						
						// 제일 마지막 , 지우기
						// abc -> ab
						// 3, (0, 2)
						foodString = foodString.substring(0, foodString.length() - 1);
						
						// printWriter 기본 사용 가능
						out.print(foodString);
					}
				%>
			</td>
		</tr>
		<tr>
			<th>좋아하는 과일</th>
			<td><%=fruit %></td>
		</tr>
		
	</table>
</body>
</html>