<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="Database.LoginAccess" %>
<%@ page import="Database.pdfViewer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resume Generator</title>
<script type="text/javascript" src="addButton.js"> </script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<%
String username=(String)session.getAttribute("username");
if(username==null || username.equalsIgnoreCase("")){
	out.println(session.getAttribute("username"));
	response.sendRedirect("login.jsp");
}
%>
<div class="container-fluid">
<div class="row">
<div class="col-sm-6">
<form role="form" action="info2.jsp" method="post">
<div id="aa">
<h3>Academic Achievements</h3>
<input class="btn btn-success" type="submit" value="Compile"/><br><br>
<button class="btn btn-primary" type="button" onclick="addmoreaa()">Add more</button>
<button class="btn btn-primary" type="button" onclick="removeLastaa()">Remove last</button><br><br>
<input type="hidden" name="aa_count" id="aa_count" value="1"/>
<input class="form-control" type="text" name="aad1" id="aad1" size="40" placeholder="Description"/><br id="aabr01">
<input class="form-control" type="text" id="aat1" name="aat1" size="20" placeholder="Time"/><br id="aabr11"><br id="aabr12">
</div>
<div id="proj">
<h3>Projects</h3>
<button class="btn btn-primary" type="button" onclick="addmoreproj()">Add more</button>
<button class="btn btn-primary" type="button" onclick="removeLastproj()">Remove last</button><br><br>
<input type="hidden" name="proj_count" id="proj_count" value="1"/>
<input class="form-control" type="text" name="projT1" id="projT1" size="40" placeholder="Title" /><br id="projbr11">
<input class="form-control" type="text" name="projt1" id="projt1" size="20" placeholder="Time" /><br id="projbr21">
<input class="form-control" type="text" name="projg1" id="projg1" size="20" placeholder="Guide"/><br id="projbr31">
<input class="form-control" type="text" name="projc1" id="projc1" size="20" placeholder="Course/Company/University"/><br id="projbr41">
<input class="form-control" type="text" name="projd11" id="projd11" size="80" placeholder="Description"/><br id="projbr51">
<input class="form-control" type="text" name="projd21" id="projd21" size="80" placeholder="Description"/><br id="projbr61">
<input class="form-control" type="text" name="projd31" id="projd31" size="80" placeholder="Description"/><br id="projbr71">
<input class="form-control" type="text" name="projd41" id="projd41" size="80" placeholder="Description"/><br id="projbr81"><br id="projbr91">
</div>
<div id="skill">
<h3>Skills</h3>
<button class="btn btn-primary" type="button" onclick="addmoreskill()">Add more</button>
<button class="btn btn-primary" type="button" onclick="removeLastskill()">Remove last</button><br><br>
<input type="hidden" name="skill_count" id="skill_count" value="1"/>
<input type="text" name="skilln1" id="skilln1" size="40" placeholder="Domain"/>
<input type="text" id="skills1" name="skills1" size="60" placeholder="Comma separated skills"/><br id="skillbr11"><br id="skillbr21">
</div>

<div id="ec">
<h3>Extracurriculars</h3>
<button class="btn btn-primary" type="button" onclick="addmoreec()">Add more</button>
<button class="btn btn-primary" type="button" onclick="removeLastec()">Remove last</button><br><br>
<input type="hidden" name="ec_count" id="ec_count" value="1"/>
<input type="text" name="ecd1" id="ecd1" size="80" placeholder="Description"/>
<input type="text" id="ect1" name="ect1" size="20" placeholder="Time"/><br id="ecbr11"><br id="ecbr21">
</div>
</form>
<form action="pdfViewer" method="get">
<input type="submit" value="Show"/><br><br>
</form>
</div>
<div class="col-sm-1">
</div>
<div class="col-sm-5">
<object data="pdfViewer" type="application/pdf" width="100%" height="800px">
    <a href="pdfViewer">Download file.pdf</a>
</object>
</div>
</div>
</div>
</body>
</html>