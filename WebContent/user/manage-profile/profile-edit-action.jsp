<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*"%>
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
	String userName = request.getParameter("Username");
	String password = request.getParameter("Password");
	char type = request.getParameter("Type").charAt(0);
	UserUI ui = (UserUI) session.getAttribute("UI");
	if(type!='a' && type!='u')
		response.sendRedirect("index.jsp?Error=type");
	else if(ui==null){
		response.sendRedirect("index.jsp?Error=nullUser");
	}
	else{
		ui.editUser(firstName, lastName, password);
		response.sendRedirect("index.jsp");
	}
%>
</body>
</html>