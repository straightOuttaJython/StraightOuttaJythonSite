<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	AdminUI aUI = (AdminUI) session.getAttribute("UI");
	
	String firstName = request.getParameter("FirstName");
	String lastName = request.getParameter("LastName");
	String username = request.getParameter("Username");
	String password = request.getParameter("Password");
	String type = request.getParameter("Type");
	String status = request.getParameter("Status");
	
	if(firstName.equals("") || 	lastName.equals("") || 	username.equals("") ||
		password.equals("") || 	type.equals("") || 	status.equals("")) {
		response.sendRedirect("edit-user.jsp?Error=1&Username="+username);
	}
	else {
		aUI.editUser(username, firstName, lastName, password, type.charAt(0), status.charAt(0));
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