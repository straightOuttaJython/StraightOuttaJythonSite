<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*"%>
<%@include file="/verify-login.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit profile</title>
</head>
<body>
<!-- DUONG
This is where you make the actual call to edit a user-->
<%
	String firstName = request.getParameter("FirstName");
	String lastName = request.getParameter("LastName");
	String password = request.getParameter("Password");
	String username = request.getParameter("Username");
	UserUI ui = (UserUI) session.getAttribute("UI");
	if(ui==null){
		response.sendRedirect("index.jsp?Error=-1");
	}
	else{
		try {
			ui.editUser(firstName, lastName, password);
		}
		catch (IllegalArgumentException iAE) {
			response.sendRedirect("index.jsp?Error=-2");
		}
		LoginUI login = new LoginUI();
		
		ui = new UserUI(login.login(username,password));
		session.setAttribute("UI",ui);
		response.sendRedirect("../index.jsp");
	}
%>
</body>
</html>