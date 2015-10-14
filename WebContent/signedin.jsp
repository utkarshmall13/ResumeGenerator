<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="Database.LoginAccess" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resume Generator</title>
</head>
<body>
<% 
String username = request.getParameter("username");
String password = request.getParameter("password");
String password2 = request.getParameter("password2");
String fname = request.getParameter("fname");
String mname = request.getParameter("mname");
String lname = request.getParameter("lname");
String rollno = request.getParameter("rollno");
Date dob = LoginAccess.string2Date(request.getParameter("dob"));
String sex = request.getParameter("sex");

if(username==null || username.equalsIgnoreCase("") ||
	password==null || password.equalsIgnoreCase("")||
	password2==null || password2.equalsIgnoreCase("")||
	fname==null || fname.equalsIgnoreCase("")||
	lname==null || lname.equalsIgnoreCase("")||
	rollno==null || rollno.equalsIgnoreCase("")||
	dob==null||
	sex==null || sex.equalsIgnoreCase(""))
{	
	response.sendRedirect("signup.jsp");
}
else{
	if(!password.equals(password2)){
		response.sendRedirect("signup.jsp");
	}
	else{
		int err_val=LoginAccess.makeAccount(username,password,fname,mname,lname,rollno,dob,sex);
		if(err_val==-1)	{
			session.setAttribute("err","alreadypresent");
			response.sendRedirect("signup.jsp");
		}
		else if(err_val==-3)	{
			session.setAttribute("err","univerr");
			response.sendRedirect("signup.jsp");
		}
		else{
			response.sendRedirect("login.jsp");
		}
	}
}
%>
</body>
</html>