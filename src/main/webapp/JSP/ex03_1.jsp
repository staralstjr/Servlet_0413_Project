<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>Post method 플래그</title>
</head>
<body>
	<form method="post" action="/JSP/ex03_2.jsp">
		1. 취미가 무엇인가요? <input type="text" name="hobby"><br><br>
		2. 강아지 or 고양이 or 고슴도치 <br>
		<lable>강아지<input type="radio" name="pet" value="dog"></lable>
		<lable>고양이<input type="radio" name="pet" value="cat"></lable>
		<lable>고슴도치<input type="radio" name="pet" value="hedgehog"></lable>
		<br><br>
		3. 다음 중 선호하는 것을 고르세요.
		<label>민트초코<input type="checkbox" name="food" value="mint-choco"></label>
		<label>하와이안 피자 (파인애플)<input type="checkbox" name="food" value="pizza"></label>
		<label>번데기<input type="checkbox" name="food" value="pupa"></label>
		<br>
		<br>
		<br>
		4. 좋아하는 과일을 선택하세요.
		<select name="fruit">
			<option value="apple">사과</option>
			<option value="banana">바나나</option>
			<option value="peach">복숭아</option>
			<option value="strawberry">딸기</option>
		</select>
		<input type="submit" value="제출">
		<br>
		<br>
		<br>
		
	</form>
</body>
</html>