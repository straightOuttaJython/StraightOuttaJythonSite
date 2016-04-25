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
		response.sendRedirect("login.jsp?Error=2");
		return;
	}
	LoginUI login = new LoginUI();
	session.setAttribute("LoginUI", login);
	try {
		Person person = login.login(username, password);
		char type = person.getType();
		if(type == 'a') {
			AdminUI aui = new AdminUI(person);
			session.setAttribute("UI", aui);
			response.sendRedirect("admin/index.jsp");
		} else {
			UserUI ui = new UserUI(person);
			session.setAttribute("UI", ui);
			response.sendRedirect("user/index.jsp");
		}
	} catch (InactiveAccountException e) {
		response.sendRedirect("login.jsp?Error=2");
	} catch (IllegalArgumentException e) {
		response.sendRedirect("login.jsp?Error=3");
	}
	return;
%>