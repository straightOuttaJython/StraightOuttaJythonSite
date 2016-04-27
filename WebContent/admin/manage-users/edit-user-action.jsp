<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	AdminUI aUUI = (AdminUI)request.getAttribute("UI");
	if(request.getParameter("Username").equals("")||
		request.getParameter("FirstName").equals("") ||
		request.getParameter("LastName").equals("") ||
		request.getParameter("Username").equals("") ||
		request.getParameter("Password").equals("") || 
		request.getParameter("Type").equals("")||
		request.getParameter("Status").equals(""))
	{
		response.sendRedirect("edit-user.jsp?Error=1&Username="+request.getParameter("Username"));
	}
	else
	{
		aUUI.editUser(request.getParameter("Username"),request.getParameter("FirstName"), 
				request.getParameter("LastName"), request.getParameter("Password"), request.getParameter("Type").charAt(0), 
				request.getParameter("Status").charAt(0));
		response.sendRedirect("index.jsp");
	}
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