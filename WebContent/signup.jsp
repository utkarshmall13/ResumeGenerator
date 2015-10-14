<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@ page import="Database.LoginAccess" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resume Generator</title>
</head>
<body>
<form  action="signedin.jsp" method="post">
Username: <input type="text" name="username"><br>
Password: <input type="password" name="password"><br>
Confirm Password: <input type="password" name="password2"><br>
Name: <input type="text" name="fname"><br>
Middle Name: <input type="text" name="mname"><br>
Last Name: <input type="text" name="lname"><br>
Roll Number: <input type="text" name="rollno"><br>
DOB(DD/MM/YYYY): <input type="date" name="dob" value="01/01/1995"><br>
Sex:<input type="radio" name="sex" value="male">male &nbsp &nbsp &nbsp &nbsp <input type="radio" name="sex" value="male">female<br>
<input type="submit" value="Signup"></input><br>
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
</body>
</html>