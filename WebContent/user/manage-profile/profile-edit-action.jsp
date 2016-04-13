<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- DUONG
This is where you make the actual call to edit a user-->
<%@include file="verify_edit.jsp"%>
<%
	String firtsName = request.getParameter("FirstName");
	String lastName = request.getParameter("LastName");
	String userName = request.getParameter("Username");
	String password = request.getParameter("password");
	char type = request.getParameter("Type");
	if(type!='a'||type!='u')
		response.sendRedirect("classexercise.jsp?Error=type");
    theUCObj.editUser(firtsName, lastName, userName, password, type);
    response.sendRedirect("Menu.jsp");
%>
</body>
</html>