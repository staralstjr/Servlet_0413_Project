<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>배달의 민족 검색2</title>
</head>
<body>

	<%
		String menus = request.getParameter("menus");
		
		List<Map<String, Object>> list = new ArrayList<>();
	    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	    list.add(map);
		
	    List list_chicken = new ArrayList();
	    List list_pizza = new ArrayList();
	    List list_hamburger = new ArrayList();
	    
	    for(int i = 0; i < list.size(); i++){
		    if(menus.equals("치킨") && list.get(i).containsValue("치킨")){
		    	list_chicken.add((list.get(1).get("name"))); // 0
		    	list_chicken.add((list.get(2).get("name"))); // 1
		    	list_chicken.add((list.get(5).get("name"))); // 2
	    		//-----------------------------------
	    		list_chicken.add((list.get(1).get("menu"))); // 3
	    		list_chicken.add((list.get(2).get("menu"))); // 4
	    		list_chicken.add((list.get(5).get("menu"))); // 5
	    		//-----------------------------------
	    		list_chicken.add((list.get(1).get("point"))); // 6
	    		list_chicken.add((list.get(2).get("point"))); // 7
	    		list_chicken.add((list.get(5).get("point"))); // 8
	    		}
		    else if(menus.equals("피자") && list.get(i).containsValue("피자")){
		    	list_pizza.add((list.get(3).get("name"))); // 0
		    	list_pizza.add((list.get(6).get("name"))); // 1
		    	//-----------------------------------
		    	list_pizza.add((list.get(3).get("menu"))); // 2
		    	list_pizza.add((list.get(6).get("menu"))); // 3
		    	//-----------------------------------
		    	list_pizza.add((list.get(3).get("point"))); // 4
		    	list_pizza.add((list.get(6).get("point"))); // 5
		    	}
		    else if(menus.equals("햄버거") && list.get(i).containsValue("햄버거")){
		    	list_hamburger.add((list.get(0).get("name"))); // 0
		    	list_hamburger.add((list.get(4).get("name"))); // 1
		    	//-----------------------------------
		    	list_hamburger.add((list.get(0).get("menu"))); // 2
		    	list_hamburger.add((list.get(4).get("menu"))); // 3
		    	//-----------------------------------
		    	list_hamburger.add((list.get(0).get("point"))); // 4
		    	list_hamburger.add((list.get(4).get("point"))); // 5
		    	}
		    
	    }
	%>
<div class="container">
<table class="table">
<thead>
<center><h1>검색 결과</h1></center>
	<thead>
	<tr>
		<td>상호</td>
		<td>메뉴</td>
		<td>별점</td>
	</tr>
	</thead>
	</tbody>
	<%
	for(int i = 0; i < list.size(); i++){
	 if(menus.equals("치킨") && list.get(i).containsValue("치킨")){ 
	%>
	<tr>
		<td><%=list_chicken.get(0) %></td>
		<td><%=list_chicken.get(3) %></td>
		<td><%=list_chicken.get(6) %></td>
	</tr>
	<tr>
		<td><%=list_chicken.get(1) %></td>
		<td><%=list_chicken.get(4) %></td>
		<td><%=list_chicken.get(7) %></td>
	</tr>
	<tr>
		<td><%=list_chicken.get(2) %></td>
		<td><%=list_chicken.get(5) %></td>
		<td><%=list_chicken.get(8) %></td>
	</tr>
	<% 
		break;	
	 }
	}
	%>
	
	<%
	for(int i = 0; i < list.size(); i++){
	 if(menus.equals("피자") && list.get(i).containsValue("피자")){
	%>
	<tr>
		<td><%=list_pizza.get(0) %></td>
		<td><%=list_pizza.get(2) %></td>
		<td><%=list_pizza.get(4) %></td>
	</tr>
	<tr>
		<td><%=list_pizza.get(1) %></td>
		<td><%=list_pizza.get(3) %></td>
		<td><%=list_pizza.get(5) %></td>
		
	</tr>
	<% 
		break;	
	 }
	}
	%>
	
	<%
	for(int i = 0; i < list.size(); i++){
	 if(menus.equals("햄버거") && list.get(i).containsValue("햄버거")){
	%>
	<tr>
		<td><%=list_hamburger.get(0) %></td>
		<td><%=list_hamburger.get(2) %></td>
		<td><%=list_hamburger.get(4) %></td>
	</tr>
	<tr>
		<td><%=list_hamburger.get(1) %></td>
		<td><%=list_hamburger.get(3) %></td>
		<td><%=list_hamburger.get(5) %></td>
		
	</tr>
	<% 
		break;	
	 }
	}
	%>
</tbody>
</table>
</div>
</body>
</html>