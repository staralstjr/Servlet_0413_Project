<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cm변환 가즈아</title>
</head>
<body>
	<%
		String whatCM = request.getParameter("whatCM");
		int CM = Integer.parseInt(whatCM);
		
		String[] types = request.getParameterValues("type"); 
		/* String inch = request.getParameter("inch");
		String yard = request.getParameter("yard");
		String feet = request.getParameter("feet");
		String meter = request.getParameter("meter"); */
		
	%>
	<div class="container">
		<b> <%=whatCM %> cm</b>
		<hr>
			<%
			
				// 값 출력 여러가지 방법!
				for(String type:types){
					if(type.equals("inch")){
						double inch = CM * 0.39;
						%>
						<%=inch%> in <br>
						
						<% 
					}else if(type.equals("yard")){
						double yard = CM * 0.010936133;
						out.print(yard + "yd <br>");
					}else if(type.equals("feet")){
						double feet = CM * 0.032808399;
						%>
							<!-- html -->
							<%=feet %> ft <br>
						<% 
						
					}else if(type.equals("meter")){
						double meter = CM / 100.0;
						%>
							<!-- html -->
							<%=meter %> m <br>
						<%
					}
				}
			%>
	</div>
	
</body>
</html>