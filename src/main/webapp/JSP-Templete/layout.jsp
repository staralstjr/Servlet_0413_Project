<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<style>
	#wrap {width:1200px; margin:auto}
	header {height:80px}
	nav {height:50px}
	section {height:400px}
	footer {height:80px}
</style>

</head>
<body>
	<div id="wrap"">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<header>
			<h1>Layout Test</h1>
		</header>
		<nav>
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link">메뉴1</a></li>
				<li class="nav-item"><a href="#" class="nav-link">메뉴2</a></li>
				<li class="nav-item"><a href="#" class="nav-link">메뉴3</a></li>
				<li class="nav-item"><a href="#" class="nav-link">메뉴4</a></li>
			</ul>
		</nav>
		<section>
			<img width="200" src="https://cdn.pixabay.com/photo/2021/06/04/10/46/seagulls-6309501_1280.jpg">
			<div>
				예쁜 풍경 사진
			</div>
		</section>
		<jsp:include page="footer.jsp" />
		<footer>
			Copyright 2016. 이름 All Pictures Cannot Be Copied Wihour Permission.

		</footer>
	</div>
</body>
</html>