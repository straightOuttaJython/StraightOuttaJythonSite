<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.home.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bye</title>
</head>
<body>
<%
	PersonHome ph3 = new PersonHome();
	ph3.addUser(request.getParameter("FirstName"),request.getParameter("LastName"),request.getParameter("Username"),
			request.getParameter("Password"), request.getParameter("Type").charAt(0));
	
	response.sendRedirect("index.jsp");
%>
<!-- ERIN
this is where the call to add the user goes-->


</body>
</html>