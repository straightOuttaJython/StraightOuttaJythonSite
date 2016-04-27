<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cmc.ui.*" import="cmc.entity.*"%>
<%@include file="/verify-login.jsp"%>
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
	UserUI ui = (UserUI) session.getAttribute("UI");
	School school = ui.getSchool(schoolName);
	ui.removeSchool(school);
	response.sendRedirect("index.jsp");
%>
</body>
</html>