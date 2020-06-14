<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<style type="text/css">


.question{
    background: #B03060;
    padding: 20px;
    color: #fff;
    border-bottom-right-radius: 55px;
    border-top-left-radius: 55px;
}
body {
  background-image: url('/images/home.png');
  background-repeat: no-repeat;
  background-size: 100% 300%;
}


.right{

float: right;
}

</style>
</head>
<body>

<div class="right"><p id="demo"></p>  </div>
 

<p id="demo1"></p>

<script>



var a=setInterval(myCounter, 1000);
var c = 0;
function myCounter() {
 document.getElementById("demo").innerHTML = ++c;
}
function my(){
	
	document.getElementById("time").value=c;
	clearInterval(a)
	
	
	
}
</script> 

<div align="right">
<video width=10% height=10% autoplay>
  <source src="/images/clock1.mp4" type="video/mp4" >
  </video>
</div>
<br>
<br>
	<div class="question">
		<h3>
			<span class="label label-warning" id="qid">1</span> <span
				id="question">${Question.getQuestion()}</span>
		</h3>
	</div>




	<form method="post" action="home">


<input type="radio" name="answer" value="a">${Question.getOption1()}<br>
<input type="radio" name="answer" value="b">${Question.getOption2()}<br>
<input type="radio" name="answer" value="c">${Question.getOption3()}<br>
<input type="radio" name="answer" value="d">${Question.getOption4()}
<br>

<input type="hidden" id="time" name="time" value="12"><br>

<input type="submit" onClick="my()" class="btn btn-primary" value="save and next!">
<button type="reset" class="btn btn-primary">Reset</button>





</form>
</body>

</html>

