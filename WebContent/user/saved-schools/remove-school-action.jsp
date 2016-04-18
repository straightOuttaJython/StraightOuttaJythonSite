<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.home.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Remove school</title>
</head>
<body>
<!-- DUONG
This should contain the actual call that removes the school-->
<%
	String schoolName = request.getParameter("school");
	PersonHome ph3 = (PersonHome)session.getAttribute("PersonHome");
	SchoolHome sh3 = (PersonHome)session.getAttribute("SchoolHome");
	School school = sh3.getSchool(schoolName);
	ph3.removeSchool(school);
	response.redirect("index.jsp");
%>
</body>
</html>