<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*"%>
<%@include file="/verify-login.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bye</title>
</head>
<body>
<%
	String firstName = request.getParameter("FirstName");
	String lastName = request.getParameter("LastName");
	String username = request.getParameter("Username");
	String password = request.getParameter("Password");
	String type = request.getParameter("Type");

	AdminUI aui = (AdminUI) session.getAttribute("UI");
	if(firstName.equals("") || lastName.equals("") || username.equals("") || password.equals("") || type.equals("")) {
		response.sendRedirect("add-user.jsp?Error=1");
	}
	else {
	aui.addUser(firstName,lastName,username,
			password, type.charAt(0));
	
	response.sendRedirect("index.jsp");
	}
%>
<!-- ERIN
this is where the call to add the user goes-->


</body>
</html>