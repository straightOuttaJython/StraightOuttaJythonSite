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
This should contain the actual call that removes the school-->
<%@include file="verify_edit.jsp"%>
<%
String schoolName = request.getParameter("school");
// Alex, add the method to find school based on school name here
theUCObj.removeSchool(school);
response.redirect(Menu.jsp);
%>
</body>
</html>