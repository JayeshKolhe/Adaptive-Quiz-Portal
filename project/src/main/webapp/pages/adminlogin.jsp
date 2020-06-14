<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admin Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  		<link rel="stylesheet" href="../css/style.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>



<body>
	<div class="container">

           
            <header>
                <h1>Admin Login</h1>
				
            </header>
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="tohome"></a>
                  <!--  <a class="hiddenanchor" id="tologin"></a> -->
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="adminlogin" method="POST"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" > Admin Username </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="admin username"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd"> Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="password" /> 
                                </p>
                                
                                <p class="login button"> 
                                   <a href="http://cookingfoodsworld.blogspot.in/" target="_blank" ></a>
								</p>
								
								<input type="submit" value="login">
								<!--  <p class="change_link">
									
									<a href="adminhome" class="to_home" style="border-radius: 1ex">Login</a>
								</p> -->
                   
                            </form>
                        </div>
                    </div>
                </div>  
            </section>
        </div>
	
</body>
</html>