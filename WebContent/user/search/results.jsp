<%@ page import="cmc.entity.*" %>
<%
	School[] schools = (School[]) session.getAttribute("SearchResults");
	for(int i = 0; i<schools.length;i++) {
		out.println(schools[i].getName());
		%>
		<br>
		<%
	}
%>