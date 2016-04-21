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
	
	
	response.sendRedirect("index.jsp");
%>
</body>
</html>