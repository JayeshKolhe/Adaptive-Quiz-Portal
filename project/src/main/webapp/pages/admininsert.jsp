<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title> Questions Insertion</title>

<style>
		body
		{
			background-image:url('/images/insert.png');
			background-repeat:no-repeat;
			background-size:100% 180%;
			
		}
</style>
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  		<!-- <link rel="stylesheet" href="../css/style.css"/>  -->
  		
  		<!--  <div style="background-image:"/images/white.jpg";width:"100%">-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>

<div class="container">

           
            <header>
            
            </header>
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="tohome"></a>
                  <!--   <a class="hiddenanchor" id="tologin"></a>--> 
                    <div style="color: White;"id="wrapper">
                    <!--      <div id="login" class="animate form">-->
                        
                        
									<form action="insert" method="post" style="font-size:20px">
									
									
									  <table>
										<tr><th > Questions Insertion </th></tr>
										
											<tr><td>Question:</td><td><input type="text" name="question"></td></tr>
											<tr><td>Option 1:</td><td> <input type="text" name="option1"></td></tr><br>
											<tr><td>Option 2:</td><td><input type="text" name="option2"></td></tr><br>
											<tr><td>Option 3:</td><td> <input type="text" name="option3"></td></tr><br>
											<tr><td>Option 4:</td><td><input type="text" name="option4"></td></tr><br>
											<tr><td>Answer:</td><td><input type="text" name="answer"></td></tr><br>
											<tr><td>Complexity level:</td></tr><br>
											<tr><td><input type="radio"  name="complexity" value="1">1</td></tr>
																<tr><td><input type="radio" name="complexity" value="2">2</td></tr>
																<tr><td><input type="radio"  name="complexity" value="3">3</td></tr>
																
															<tr><td><input type="submit" value="Enter Question"  style="color: Black";></td></tr> 
															
									</table> 
															
 <!--   <table style="width:100%">
  	<tr>
    <th>Firstname</th>
    <th>Lastname</th>
    <th>Age</th>
  </tr>
  <tr>
    <td>Jill</td>
    <td>Smith</td>
    <td>50</td>
  </tr>
  <tr>
    <td>Eve</td>
    <td>Jackson</td>
    <td>94</td>
  </tr>
</table>-->
															
										</form> 
                            
                        </div>
                    </div>
                </div>  
            </section>
        </div>
        
        
        
        




<!--   <h1>Enter Questions</h1>
<form action="insert" method="post">
Question:<input type="text" name="question"><br>
Option 1:<input type="text" name="option1"><br>
Option 2:<input type="text" name="option2"><br>
Option 3:<input type="text" name="option3"><br>
Option 4:<input type="text" name="option4"><br>
Answer:<input type="text" name="answer"><br>
Complexity level:<br>
<input type="radio" name="complexity" value="1">1
				<input type="radio" name="complexity" value="2">2
				<input type="radio" name="complexity" value="3">3
				
				<input type="submit" value="Enter Question">
</form> -->
</body>
</html>