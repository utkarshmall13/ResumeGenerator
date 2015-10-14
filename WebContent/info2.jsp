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
String username=(String)session.getAttribute("username");
if(username==null || username.equalsIgnoreCase("")){
	out.println(session.getAttribute("username"));
	response.sendRedirect("login.jsp");
	return;
}
int aa_count=Integer.parseInt(request.getParameter("aa_count"));
int proj_count=Integer.parseInt(request.getParameter("proj_count"));
int skill_count=Integer.parseInt(request.getParameter("skill_count"));


ArrayList<String> aad=new ArrayList<String>();
ArrayList<String> aat=new ArrayList<String>();

ArrayList<String> projT=new ArrayList<String>();
ArrayList<String> projt=new ArrayList<String>();
ArrayList<String> projg=new ArrayList<String>();
ArrayList<String> projc=new ArrayList<String>();
ArrayList<String> projd1=new ArrayList<String>();
ArrayList<String> projd2=new ArrayList<String>();
ArrayList<String> projd3=new ArrayList<String>();
ArrayList<String> projd4=new ArrayList<String>();

ArrayList<String> skilln=new ArrayList<String>();
ArrayList<String> skills=new ArrayList<String>();

for(int i=0;i<aa_count;i++){
	aad.add(request.getParameter("aad"+Integer.toString(i+1)));
	aat.add(request.getParameter("aat"+Integer.toString(i+1)));
}

for(int i=0;i<proj_count;i++){
	projT.add(request.getParameter("projT"+Integer.toString(i+1)));
	projt.add(request.getParameter("projt"+Integer.toString(i+1)));
	projg.add(request.getParameter("projg"+Integer.toString(i+1)));
	projc.add(request.getParameter("projc"+Integer.toString(i+1)));
	projd1.add(request.getParameter("projd1"+Integer.toString(i+1)));
	projd2.add(request.getParameter("projd2"+Integer.toString(i+1)));
	projd3.add(request.getParameter("projd3"+Integer.toString(i+1)));
	projd4.add(request.getParameter("projTd4"+Integer.toString(i+1)));
}

for(int i=0;i<skill_count;i++){
	skilln.add(request.getParameter("skilln"+Integer.toString(i+1)));
	skills.add(request.getParameter("skills"+Integer.toString(i+1)));
}

response.sendRedirect("info.jsp");
%>
</body>
</html>