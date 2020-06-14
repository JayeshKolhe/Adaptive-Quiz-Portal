<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="../css/style.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Quiz Portal</title>




</script>


</head>
<body>

	<section>
		<div id="container_demo">
			<!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
			<a class="hiddenanchor" id="toregister"></a> <a class="hiddenanchor"
				id="tologin"></a>
			<div id="wrapper">
				<div id="login" class="animate form">
					<form method="POST" action="signup">
						<h1>Register</h1>
						<p>
							<label for="username" class="uname"> Username </label> <input
								id="username" name="username" required="required" type="text"
								placeholder="Eg. your name" />
						</p>
						<p>
							<label for="password" class="youpasswd"> Password </label> <input
								id="password" name="password" required="required"
								pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number 
								and one uppercase and lowercase letter, and at least 8 or more characters"
								type="password" placeholder="eg. X8df!90EO" />
						</p>

						<p>
							<label for="email" class="email"> Email </label> <input
								id="email" name="email" type="email"
								placeholder="myusername or mymail@mail.com" />
						</p>

						<p>
							<label for="phone" class="phone"> Mobile Number </label> <input
								id="phone" name="phone" maxlength="10 " minlength="10"
								type="tel" pattern="[0-9]{10}" placeholder="eg. 123467890" />
						</p>


						<!--  <p class="login button"> 
                                   <a href="http://cookingfoodsworld.blogspot.in/" target="_blank" ></a>
								</p> -->

						<!-- <p class="change_link">
									
									<a href="signin" class="to_register" style="border-radius: 1ex">submit</a>
								</p> -->
						<input type="submit" class="to_register" style="border-radius: 1ex" value="Register">
					</form>
				</div>


			</div>
		</div>
	</section>
	</div>

	<!-- 
<form method="post" action="signup" >
Username:<input type="text" name="username"><br>
FullName:<input type="text" name="fullname"><br>
Password:<input type="text" name="password"><br>
ConfirmPassword:<input type="password" name="confirm"><br>
Email:<input type="text" name="email"><br>
Phone:<input type="text" name="phone"><br>
male :<input type="radio" name="gender"><br>
female :<input type="radio" name="gender"><br> -->



	<input type="submit" value="register">
	<br>
	</form>
</body>
</html>