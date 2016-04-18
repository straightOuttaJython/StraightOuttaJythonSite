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
	if(username.equals("") || password.equals("")) {
		session.setAttribute("Login Error", 1);
		response.sendRedirect("login.jsp");
		return;
	}
	LoginUI login = new LoginUI();
	try {
		Person person = login.login(username, password);
		char type = person.getType();
		if(type == 'a') {
			response.sendRedirect("admin/index.jsp");
		} else {
			response.sendRedirect("user/index.jsp");
		}
	} catch (InactiveAccountException e) {
		session.setAttribute("Login Error", 2);
		response.sendRedirect("login.jsp");
	} catch (IllegalArgumentException e) {
		session.setAttribute("Login Error", 3);
		response.sendRedirect("login.jsp");
	}
	return;
%>