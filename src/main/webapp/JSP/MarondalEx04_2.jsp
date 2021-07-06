<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		String firstNumber = request.getParameter("firstNumber");
		String lastNumber = request.getParameter("lastNumber");
		int fN = Integer.parseInt(firstNumber);
		int lN = Integer.parseInt(lastNumber);
		String operator = request.getParameter("operator");
		
		int result = 0;
		if(operator.equals("+")){
			result = fN + lN;
		}else if(operator.equals("-")){
			result = fN - lN;
		}else if(operator.equals("X")){
			result = fN * lN;
		}else if(operator.equals("/")){
			result = fN / lN;
		}
		
	%>
	
	<b>계산 결과</b>
	<div class="display-4"> <%=fN %> <%=operator %> <%=lN %> = <span class="text-info"> <%=result %> </span></div>
	

</body>
</html>