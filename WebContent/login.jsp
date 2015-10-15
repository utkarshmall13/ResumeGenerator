<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="Database.LoginAccess" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Resume Generator Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<h3>Enter your Login Credentials</h3>
<div class="container-fluid">
<form class="form-inline" role="form" action="loggedin.jsp" method="post">
<div class="form-group">
<label for="username">Username:</label>
<input class="form-control" type="text" name="username">
</div>
<div class="form-group">
<label for="password">Password:</label>
<input class="form-control" type="password" name="password">
</div>
<div class="form-group">
<input class="btn btn-primary" type="submit" value="Login"></input>
</div>
</form>
<br>
<div class="form-group">
<a href="signup.jsp" class="btn btn-default" >signup</a>
</div>
</div>
</body>
</html>