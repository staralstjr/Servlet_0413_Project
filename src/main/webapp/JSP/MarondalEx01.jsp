<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 1. 점수들의 평균 구하기 -->
	<%
		int[] scores = {80, 90, 100, 95, 80};
		int summing = 0;
		for(int i = 0; i < scores.length; i++){
			summing = summing + scores[i];
		}
		double average = summing/5.0;
	%>
	<b>점수 평균은 <%= average %> 입니다.</b>
	<br>
	
	<!-- 2. 채점 결과 -->
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int summ = 0;
		for(int i = 0; i < 10; i++){
			String I = scoreList.get(i);
			if(I == "O"){
				summ = summ + 10;
			}
		}
	%>
	<b>채점 결과는 <%=summ%> 입니다.</b>
	<br>
	<!-- 3. 1부터 n까지의 합계를 구하는 함수 -->
	<%!
		// 1 부터 n까지의 합을 구하는 함수
		public int getSum(int number){
			int sum = 0;
			for(int i = 1; i <= number; i++){
				sum += i;
			}
			return sum;
		}
	%>
	<b> 1부터 50까지의 합은 <%=getSum(50) %></b>
	<br>
	
	<!-- 4. 나이 구하기 -->
	<%
		String birthDay = "20010820";
		int age = Integer.parseInt(birthDay);
		int year = age/10000;
	%>
	<b>20010820의 나이는 <%=2021 - year%> 입니다.</b>

</body>
</html>
