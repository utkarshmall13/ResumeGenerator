<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="Database.LoginAccess" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resume Generator Login</title>
</head>
<body>
<h3>Enter your Login Credentials</h3>
<form  action="loggedin.jsp" method="post">
Username: <input type="text" name="username"><br>
Password: <input type="password" name="password"><br>
<a href="signup.jsp">signup</a><br><br>
<input type="submit" value="Login"></input>
</form>
</body>
</html>