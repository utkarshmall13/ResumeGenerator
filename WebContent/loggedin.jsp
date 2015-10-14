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
	
	if(username==null || username.equalsIgnoreCase("") ||
			password==null || password.equalsIgnoreCase("") ){
		out.print("<h3>Invalid input- Try Re-Login</h3>");
		out.print("<h3><a href=\"login.jsp\">Go To Login</h3>");
		session.setAttribute("username","");
	}	
	else if(!LoginAccess.CheckAccount(username,password)){
		out.print("<h3>Invalid username or password - Try Re-Login</h3>");
		out.print("<h3><a href=\"login.jsp\">Go To Login</h3>");	
		session.setAttribute("username","");
	}
	else{
		response.sendRedirect("info.jsp");
		session.setAttribute("username",username);
	}
%>
</body>
</html>