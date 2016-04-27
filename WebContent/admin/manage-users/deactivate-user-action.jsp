<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "cmc.ui.*"%>
<%
	String username = request.getParameter("Username");
	AdminUI aui = (AdminUI) session.getAttribute("UI");
	aui.deactivate(username);
	response.sendRedirect("index.jsp");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<title>bye</title>