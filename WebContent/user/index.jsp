<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/verify-login.jsp"%>
<% UserUI ui = (UserUI) session.getAttribute("UserUI"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="/head.jsp"%>
<%@include file="/header.jsp"%>
<section id="content">
	<div class="main-menu" id="greeting">Welcome, ui.getUser()!</div>
	<a href="<%=request.getContextPath()%>/user/search/index.jsp" class="main-menu option">Search for Schools</a
	><a href="<%=request.getContextPath()%>/user/saved-schools/index.jsp" class="main-menu option">Manage Schools</a
	><a href="<%=request.getContextPath()%>/user/manage-profile/index.jsp" class="main-menu option">Manage Profile</a>
</section>
</body>
</html>