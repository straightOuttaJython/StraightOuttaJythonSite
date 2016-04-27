<%@include file="/verify-login.jsp"%>
<%@ page import="cmc.entity.*" %>
<%@ page import="cmc.ui.*" %>
<%
	UserUI ui = (UserUI) session.getAttribute("UI");
	String schoolName = (String) request.getParameter("school");
	School school = ui.getSchool(schoolName);
	ui.saveSchool(school);
	String referer = request.getHeader("Referer");
	response.sendRedirect(referer);
%>