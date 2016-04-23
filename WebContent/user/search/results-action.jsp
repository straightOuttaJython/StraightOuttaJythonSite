<%@ page import="cmc.entity.*" %>
<%@ page import="cmc.ui.*" %>
<%
	School[] schools = (School[]) session.getAttribute("SearchResults");
	UserUI ui = (UserUI) session.getAttribute("UI");
	String schoolName = (String) request.getParameter("school");
	School school = new School();
	for(int i = 0; i<schools.length;i++) {
		if(schools[i].getName().equals(schoolName)) {
			school = schools[i];
		}
	}
	ui.saveSchool(school);
	response.sendRedirect("results.jsp");
%>