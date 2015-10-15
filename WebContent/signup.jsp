<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@ page import="Database.LoginAccess" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resume Generator Signup</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<h3>Enter your informations</h3>
<div class="container-fluid">
<div class="row">
  <div class="col-sm-6"></div>
  <div class="col-sm-6">
<form  role="form" action="signedin.jsp" method="post">
<div class="form-group"> 
	<label for="username">Username:</label>
	<input class="form-control" type="text" name="username">
</div>
<div class="form-group"> 
	<label for="password">Password:</label>
	<input class="form-control" type="password" name="password">
</div>
<div class="form-group"> 
	<label for="password2">Confirm Password:</label> 
	<input class="form-control" type="password" name="password2">
</div>
<div class="form-group"> 
	<label for="fname">Name:</label> 
	<input class="form-control" type="text" name="fname">
</div>
<div class="form-group">
	<label for="mname">Middle Name:</label> 
	<input class="form-control" type="text" name="mname">
</div>
<div class="form-group">
 	<label for="mname">Last Name:</label>
	<input class="form-control" type="text" name="lname">
</div>
<div class="form-group"> 
 	<label for="rollno"> Roll Number:</label>
	<input class="form-control" type="text" name="rollno">
</div>
<div class="form-group">  
	<label for="dob">DOB(MM/DD/YYYY):</label>
	<input class="form-control" type="date" name="dob" value="01/01/1995">
</div>
<div class="form-group">
	<label for="dob">Sex:</label>
	<label class="radio-inline"><input type="radio" name="sex" value="male">male</label>
	<label class="radio-inline"><input type="radio" name="sex" value="male">female</label>
</div>
<div class="form-group">
<input class="btn btn-primary" type="submit" value="Signup"></input><br>
</div>
</form>
<%
if(session.getAttribute("err")=="alreadypresent"){
	out.println("username already taken");
	session.setAttribute("err","");
}
else if(session.getAttribute("err")=="univerr"){
	out.println("roll number/name not matching with university database");
	session.setAttribute("err","");
}
%>
</div>
</div>
</div>
</body>
</html>