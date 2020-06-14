<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  		<!-- <link rel="stylesheet" href="../css/style.css"/> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
<title>
</title>

<style>

body {
  background-image: url('/images/home.png');
  background-repeat: no-repeat;
  background-size: 100% 300%;
}


</style>
</head>
<body>

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
    <form>
    <input type="submit" value="Admin" class="btn btn-danger navbar-btn" disabled>
	</form>  
  </div>
</nav>






<div align="center">
<img alt="Congratss...!!" src="/pages/tenor.gif">
</div><div align="center">
<h1> congratulations!!  </h1>
<h1>Result is: ${marks}/20</h1></div>
</body>

<div class="container" align="center" >
<!-- <form action="/" >
   <input type="image" src="/images/logout.png " style="width:5%;" alt="Submit" > 
  	<input type="submit" value="Logout"> </form>
  	</form> -->
  	<a href="/"><input type="image" src="/images/logout.png " style="width:5%;" alt="Submit" > </a>
  	
  	
  	<form action="home" >
   <input type="image" src="/images/button (2).png " style="width:5%;" alt="Submit" >
   </form> 
</div>




</html>