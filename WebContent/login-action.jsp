<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cmc.ui.*" %>
<%@ page import="cmc.entity.*" %>
<%@ page import="cmc.controller.LoginController.InactiveAccountException" %>
<!-- MATT
this page should lead to either /admin/index.jsp or /user/index.jsp
those are the names of the menus-->
<% 
	String username = (String) request.getParameter("Username");
	String password = (String) request.getParameter("Password");
	LoginUI login = new LoginUI();
	try {
		Person person = login.login(username, password);
	} catch (InactiveAccountException e) {
		
	} catch (IllegalArgumentException e) {
		
	}
%>