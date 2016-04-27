<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.home.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	PersonHome ph = new PersonHome();
	ph.updatePerson(request.getParameter("Username"),request.getParameter("FirstName"), 
			request.getParameter("LastName"), request.getParameter("Password"), request.getParameter("Type").charAt(0), 
			request.getParameter("Status").charAt(0));
	response.sendRedirect("index.jsp");
   %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bye Felicia</title>
</head>
<body>
<!-- ERIN
this is where the call to edit the user goes-->

</body>
</html>