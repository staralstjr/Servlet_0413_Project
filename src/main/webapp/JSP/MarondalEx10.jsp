<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>달력</title>
</head>
<body>
	
	<div class="container">
	<table class="table text-center">
	<center><div class="display-3">2021-07</div></center>
	<br>
		<thead>
			<tr>
				<th bgcolor='pink'><font color="red">일</font></th>
				<th bgcolor='orange'>월</th>
				<th bgcolor='yellow'>화</th>
				<th bgcolor='green'>수</th>
				<th bgcolor='blue'>목</th>
				<th bgcolor='sky-blue'>금</th>
				<th bgcolor='purple'>토</th>
				
			</tr>
		</thead>
		<%
			Calendar cal = Calendar.getInstance();
			Date date = new Date();
			int day = cal.get(Calendar.DAY_OF_MONTH);
			int yoil = cal.get(Calendar.DAY_OF_WEEK);
			int result = 0;
			int num = 1;
			int firstday = cal.getMinimum(Calendar.DAY_OF_MONTH);
			int lastday = cal.getMaximum(Calendar.DAY_OF_MONTH);
			cal.set(Calendar.YEAR, 2010);
			cal.set(Calendar.MONTH, 9);
			cal.set(Calendar.DATE, 1);
		%>
		<tbody>
			<% 
				for(int i = 0; i < 5; i++){
				
			%>
			<tr>
				<%
					for(int j = 0; j < 7; j++){
							
						if(result > lastday){
							break;
						}
						if(num < yoil - 1){
							num++;
							%>
								<td class="empty" bgcolor='gray'></td>
							<% 
						}else{
							result++;
				%>	
					<td class="display-3" bgcolor='ivory'><%=result%></td>
				<% } %>
				<% } %>
			</tr>
			<% } %>
		
		</tbody>
	</table>
	
	
	</div>
</body>
</html>