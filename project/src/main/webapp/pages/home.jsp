<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%
  String str="";
  if(request.getSession().getAttribute("session")!=null){
  str=(String)request.getSession().getAttribute("session");
  %>
<title>Quiz Portal</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/style.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
body {
	background-image: url('/images/home.png');
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

img {
	display: block;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body style="background-image: url('/images/home.png');">

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<p class="navbar-brand">Adaptive Quiz Portal</p>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="/">Home</a></li>
				<li><a href="#">About</a></li>

				<li><a href="instructions">Instructions</a></li>

			</ul>

		</div>
	</nav>
	<p><font size="6">Welcome
		<%=str %></font></p>



	<!-- <p align="center">
<button type="button" style="background-color:yellow;margin-left:auto;margin-right:auto;display:block;margin-top:22%;margin-bottom:50%"> mybuttonname</button>
</p>
 -->
	<!-- <div align="center" style=":15%" >
	  <button class="btn btn-danger navbar-btn">

<a href="quiz" class="to_register">Start Quiz !!</a> -->
	<!-- <div>
<input type="submit" value="Start Quiz !!">

</div> -->
	<div class="container" align="center">

		 <form action="home" method="POST"> 
			 <input type="image" src="/images/button (2).png " style="width: 20%;"
				alt="Submit"> 
				
				<!-- <input type="submit" value ="quizstart"> -->
		</form>
	</div>

</body>
<%}
  else
  {
	  response.sendRedirect("signin");
  }
  %>
</html>