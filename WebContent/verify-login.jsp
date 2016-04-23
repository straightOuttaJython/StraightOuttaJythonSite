<%@ page import="cmc.ui.*" import="cmc.entity.Person"%>
<%
	LoginUI loginUi = (LoginUI) session.getAttribute("LoginUI");
	Person logged = new Person();
	if(loginUi != null) {
		logged = loginUi.getLoggedPerson();
	}
	if ((loginUi==null) || (logged.getFirstName().equals("Empty"))){
		String contextPath = request.getContextPath();
		response.sendRedirect(response.encodeRedirectURL(contextPath + "/login.jsp?Error=-4")); 
	    return;
	}
%>