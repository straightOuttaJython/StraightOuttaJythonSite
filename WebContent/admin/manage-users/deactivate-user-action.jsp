<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "cmc.ui.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bye</title>
</head>
<body>
    <%
    AdminUI auii = (AdminUI) session.getAttribute("UI");
    auii.deactivate("erinqueme");
    response.sendRedirect("index.jsp");
    %>
</body>
</html>