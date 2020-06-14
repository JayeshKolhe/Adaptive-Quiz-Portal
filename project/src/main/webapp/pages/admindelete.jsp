<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "project1";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  		<!--  <link rel="stylesheet" href="../css/style.css"/> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<title>Admin Delete</title>


<style>
		body
		{
			background-image:url('/images/delete.png');
			background-repeat:no-repeat;
			background-size:100% 100%;
			
		}
</style>


</head>

<body>
<div class="container">

           
            <header>
                
				
            </header>
            <section>				
                <div id="container_demo" >
               
  <!--  <table class="table table-bordered table-dark" > --> 
  
  <h1> Questions Deletion </h1>
  <div style="color: red;"id="wrapper">

  <table border="2ex" style="color: black; font-weight: bold;"> 
<tr>
<td>Id</td>
<td>Questions</td>



</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from quest";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr>
<td><%=resultSet.getInt("id")%></td>
<td><%=resultSet.getString("Questions") %></td>


</tr>


<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>


<form action="delete" method="post">
<input type="text" name="val">
<input type="submit" value="Delete">
</table>
</form>
</div>
</section>
</div>

</body>
</html>