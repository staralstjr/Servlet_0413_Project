<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멜롱-아이유</title>

<link rel="stylesheet" href="style.css" type="text/css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
#wrap {width:1200px; margin:auto;}
header {height:100px;}
header > .logo {width:150px;}
nav {height:40px;}
.main-link {color: black; font-weight: bold;}
.main-link:hover {color:#56a105;}
.searchbar { width:400px;	}
.photo-size { width:150px;}
.album-size { width:200px;}
.music-info { font-size:14px; font-weight: 300;}
footer {height:200px;}
</style>
</head>
<body>
	<div id="wrap">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		
		<%@ include file="data.jsp" %>
		
		<section>
			<div class="singer-info d-flex border border-success  mt-2 p-3">
				<div class="singer-photo">
					<img class="photo-size" src="<%=artistInfo.get("photo")%>">
				</div>	
				<div class="ml-4"> 
					<h3><%=artistInfo.get("name") %></h3>
					<div><%=artistInfo.get("agency") %></div>
                    <div><%=artistInfo.get("debute") %> 데뷔</div>
				</div>
			</div>
			
			<div class="music-list mt-3">
                <h4>곡 목록</h4>
				<table class="table table-sm text-center">
					<thead>
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>앨범</th>
						</tr>
					</thead>
					<tbody>
						<%
							for(int i = 0; i < musicList.size(); i++) {
								Map<String, Object> info = musicList.get(i);
						%>
                        <tr>
                            <td><%=info.get("id") %></td>
                            <td><a href="MarondalEx02_2.jsp?id=<%=info.get("id") %>"><%=info.get("title") %></a></td>
                            <td><%=info.get("album") %></td>
                        </tr>
                        <%
							}
                        %>
					</tbody>
				</table>
			
			</div>
		</section>
		
        <hr>
		<jsp:include page="footer.jsp" />
		
	</div>
</body>
</html>