<%@ page import="cmc.ui.*" import="cmc.entity.*"%>
<%
	Object loginUi = session.getAttribute("LoginUI");
	Person logged;
	if(loginUi != null && loginUi instanceof LoginUI) {
		logged = (LoginUI)loginUi.getLoggedPerson();
	}
	else {
		String contextPath = request.getContextPath();
		response.sendRedirect(response.encodeRedirectURL(contextPath + "/login.jsp?Error=-4")); 
	    return;
	}
%>