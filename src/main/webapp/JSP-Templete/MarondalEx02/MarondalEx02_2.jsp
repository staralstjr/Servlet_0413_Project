<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<%@ include file="data.jsp" %>
	<%
		String idString = request.getParameter("id");
		String title = request.getParameter("title");
		// 대상이될 맵을 찾는다. 
		Map<String, Object> target = null;
		// id 파라미터가있을때
		if(idString != null) {
			for(Map<String, Object> info:musicList) {
				int musicId = Integer.parseInt(idString);
				if((Integer)info.get("id") == musicId) {
					target = info;
					break;
				}
			}	
		}
		
		// title 파라미터가 있을때 
		if(title != null) {
			for(Map<String, Object> info:musicList) {
				if(info.get("title").equals(title)) {
					target = info;
					break;
				}
			}
		}
		
	%>

	<div id="wrap">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<section class="mt-3 mb-5">
			<% if(target != null) {
				int minute = (Integer)target.get("time") / 60;
				int second = (Integer)target.get("time") % 60;
			%>
				
			<h4>곡 정보</h4>
            <div class="d-flex  border border-success p-3">
                <div class="music-info">
                    <img class="album-size" src="<%=target.get("thumbnail")%>">                
                </div>
                <div class="ml-4">
                    <div class="display-4"><%=target.get("title") %></div>
                    <div class="font-weight-bold text-success"><%=target.get("singer") %></div>
                    <div class="d-flex mt-3 music-info">
                        <div class="text-dark">
                            앨범 <br>
                            재생시간 <br>
                            작곡가 <br>
                            작사가
                        </div>
                        <div class="ml-4">
                            <%=target.get("album") %> <br>
                            <%=minute%>:<%=second %> <br>
                            <%=target.get("composer") %> <br>
                            <%=target.get("lyricist") %>
                        </div>
                    </div>
                </div>
            </div>
            <h4 class="mt-5">가사 </h4>
            <hr>
            <div>가사 정보 없음</div>
        	<% } else { // target 이 null 일때 %>
        		<h2>노래 정보가 없습니다.</h2>
        	<% } %>
		</section>
	
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>