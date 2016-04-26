<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/verify-login.jsp"%>
<%@ page import="cmc.ui.*" %>
<% AdminUI aui = (AdminUI) session.getAttribute("UI"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="/head.jsp"%>
<%@include file="/header.jsp"%>
<section id="content">
	<div class="main-menu" id="greeting">Welcome, <%=aui.getAdmin().getFirstName()%>!</div>
	<a href="<%=request.getContextPath()%>/admin/manage-users/index.jsp" class="main-menu option">Manage Users</a
	><a href="<%=request.getContextPath()%>/admin/manage-universities/index.jsp" class="main-menu option">Manage Universities</a>
</section>
</body>
</html>