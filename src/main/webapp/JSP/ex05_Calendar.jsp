<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
	<%
		// Date 클래스 : 날짜와 시간을 저장하는 데이터 클래스에요
		// Calendar 클래스 : Date 객체를 포함하고, 날짜 계산을 수월하게 해주는 클래스에요
		// Calendar는 add 할 때 마다 그 전에 add했던 값에서 add를 해요. 
		
		Calendar today = Calendar.getInstance();
		out.println(today);
		
		// 심플데이트 포맷 출력
		SimpleDateFormat format = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		out.println(format.format(today.getTime()) +"<br>");
		
		// 어제 날짜 출력
		/* today.add(Calendar.DATE, -100);
		out.println(format.format(today.getTime()) +"<br>");
		
		today.add(Calendar.MONTH, +13);
		out.println(format.format(today.getTime()) +"<br>");
		
		today.add(Calendar.YEAR, -30);
		out.println(format.format(today.getTime()) +"<br>"); */
		
		// Calendar 로 정보 얻기
		int weeks = today.get(Calendar.WEEK_OF_YEAR);
		out.println(weeks);
		
		int day = today.get(Calendar.DAY_OF_WEEK);
		out.println(day);
		
		// 날짜 비교
		Calendar otherDay = Calendar.getInstance();
		/* otherDay.add(Calendar.DATE, 133); */
		
		int result = today.compareTo(otherDay);
		out.println(result);
		// 앞의 객체가 더 크면 1
		// 앞의 객체와 같으면 0
		// 앞의 객체가 더 작으면 -1
		// 쉽게 말해서 today.compareTo(otherDay) 에서 today - otherDay 가 양수, 같으면, 음수로 생각하면 쉬워
		if(result > 0){
			out.println("앞 객체가 더 크다");
		}else if(result < 0){
			out.println("뒤 객체가 더 크다");
		}else {
			out.println("두 날짜가 같다");
		}
		
	%>
</body>
</html>
		